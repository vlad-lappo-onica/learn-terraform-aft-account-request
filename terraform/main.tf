module "dev_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "vlad.lappo+dev02@gmail.com"
    AccountName  = "dev-account-02"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Dev"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "vlad.lappo@gmail.com"
    SSOUserFirstName = "Vlad"
    SSOUserLastName  = "Lappo"
  }

  account_tags = {
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
  }


  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  /* account_customizations_name = "sandbox" */
}
