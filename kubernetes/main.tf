terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.35.1"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"  # Path to your kubeconfig file
  config_context = "minikube"
}

resource "kubernetes_namespace" "namespace-test" {
  metadata {
    name = "test"
  }
}
