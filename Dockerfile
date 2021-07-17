FROM golang:1.16-alpine

WORKDIR /app

COPY . /app
RUN go mod download

RUN go build -o /bin
RUN chmod +x /bin
EXPOSE 8080

CMD [ "/bin" ]