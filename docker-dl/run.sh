# Copy dependencies
cp ../requirements.txt .

# Build Docker
sudo docker build -t dl:default .

# Run Docker
sudo docker run -it --rm --gpus all -v $(pwd)/../:/project dl:test
