# Start from the official Go image
FROM golang:1.22-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files
COPY go.mod ./

# Copy the source code
COPY main.go ./

# Build the application
RUN go build -o main .

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["./main"]