#!/bin/bash
echo "BUILD START"

# Install dependencies
pip install -r requirements.txt

# Create staticfiles directory
mkdir -p staticfiles

# Collect static files
python manage.py collectstatic --noinput --clear

# Debug: List contents of staticfiles directory
echo "Contents of staticfiles directory:"
ls -R staticfiles/

echo "BUILD END"