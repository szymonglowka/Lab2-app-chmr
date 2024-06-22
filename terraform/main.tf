terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "local" {}
}

provider "aws" {
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "us-east-1"
  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-localstack-bucket"
  acl    = "private"
}
