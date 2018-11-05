variable "region" {
  description = "Build region; REF: https://cloud.google.com/compute/docs/regions-zones/#available"
  type        = "string"
}

variable "zone" {
  description = "Build zone(s); REF: https://cloud.google.com/compute/docs/regions-zones/#available"
  type        = "string"
}

variable "project" {
  description = "What's the purpose of this project? Great, now whta's the name?"
  type        = "string"
}

variable "billing_account" {
  description = "Billing account for the Organization."
  type        = "string"
}

variable "org_id" {
  description = "The Organization ID; run: gcloud organizations list"
  type        = "string"
}

variable "instance_type" {
  type    = "string"
  default = "n1-standard-2"
}

variable "service_account_iam_roles" {
  type = "list"

  default = [
    "roles/resourcemanager.projectIamAdmin",
    "roles/iam.serviceAccountAdmin",
    "roles/iam.serviceAccountKeyAdmin",
    "roles/iam.serviceAccountTokenCreator",
    "roles/iam.serviceAccountUser",
    "roles/viewer",
  ]
}

variable "project_services" {
  type = "list"

  default = [
    "cloudkms.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "container.googleapis.com",
    "iam.googleapis.com",
  ]
}

variable "storage_bucket_roles" {
  type = "list"

  default = [
    "roles/storage.legacyBucketReader",
    "roles/storage.objectAdmin",
  ]
}

variable "kms_crypto_key_roles" {
  type = "list"

  default = [
    "roles/cloudkms.cryptoKeyEncrypterDecrypter",
  ]
}

variable "kubernetes_logging_service" {
  type    = "string"
  default = "logging.googleapis.com/kubernetes"
}

variable "kubernetes_monitoring_service" {
  type    = "string"
  default = "monitoring.googleapis.com/kubernetes"
}

variable "num_vault_servers" {
  type    = "string"
  default = "3"
}
