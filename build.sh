#!/bin/bash

# Exit if any command failed
set -e

# Clean
rm -Rf target
mkdir target

# Build
for file in $(find . -type f -iname '*_api.yaml'); do
  filename=$(basename $file suffix)

  swagger-cli validate $file
done
echo "DONE"
