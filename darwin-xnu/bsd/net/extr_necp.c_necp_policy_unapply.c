
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session_policy {scalar_t__ applied_route_rules_id; scalar_t__* kernel_socket_policies; scalar_t__* kernel_ip_output_policies; int applied; int * applied_account; int applied_result_uuid; int applied_real_app_uuid; int applied_app_uuid; } ;


 int FALSE ;
 int FREE (int *,int ) ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int MAX_KERNEL_IP_OUTPUT_POLICIES ;
 int MAX_KERNEL_SOCKET_POLICIES ;
 int M_NECP ;
 int TRUE ;
 int necp_account_id_list ;
 int necp_kernel_ip_output_policy_delete (scalar_t__) ;
 int necp_kernel_policy_lock ;
 int necp_kernel_socket_policy_delete (scalar_t__) ;
 int necp_num_uuid_app_id_mappings ;
 int necp_remove_route_rule (int *,scalar_t__) ;
 int necp_remove_string_to_id_mapping (int *,int *) ;
 scalar_t__ necp_remove_uuid_app_id_mapping (int ,int*,int) ;
 int necp_remove_uuid_service_id_mapping (int ) ;
 int necp_route_rules ;
 int necp_uuid_app_id_mappings_dirty ;
 int uuid_clear (int ) ;
 int uuid_is_null (int ) ;

__attribute__((used)) static bool
necp_policy_unapply(struct necp_session_policy *policy)
{
 int i = 0;
 if (policy == ((void*)0)) {
  return (FALSE);
 }

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);


 if (!uuid_is_null(policy->applied_app_uuid)) {
  bool removed_mapping = FALSE;
  if (necp_remove_uuid_app_id_mapping(policy->applied_app_uuid, &removed_mapping, TRUE) && removed_mapping) {
   necp_uuid_app_id_mappings_dirty = TRUE;
   necp_num_uuid_app_id_mappings--;
  }
  uuid_clear(policy->applied_app_uuid);
 }
 if (!uuid_is_null(policy->applied_real_app_uuid)) {
  necp_remove_uuid_app_id_mapping(policy->applied_real_app_uuid, ((void*)0), FALSE);
  uuid_clear(policy->applied_real_app_uuid);
 }
 if (!uuid_is_null(policy->applied_result_uuid)) {
  necp_remove_uuid_service_id_mapping(policy->applied_result_uuid);
  uuid_clear(policy->applied_result_uuid);
 }


 if (policy->applied_account != ((void*)0)) {
  necp_remove_string_to_id_mapping(&necp_account_id_list, policy->applied_account);
  FREE(policy->applied_account, M_NECP);
  policy->applied_account = ((void*)0);
 }


 if (policy->applied_route_rules_id != 0) {
  necp_remove_route_rule(&necp_route_rules, policy->applied_route_rules_id);
  policy->applied_route_rules_id = 0;
 }


 for (i = 0; i < MAX_KERNEL_SOCKET_POLICIES; i++) {
  if (policy->kernel_socket_policies[i] != 0) {
   necp_kernel_socket_policy_delete(policy->kernel_socket_policies[i]);
   policy->kernel_socket_policies[i] = 0;
  }
 }


 for (i = 0; i < MAX_KERNEL_IP_OUTPUT_POLICIES; i++) {
  if (policy->kernel_ip_output_policies[i] != 0) {
   necp_kernel_ip_output_policy_delete(policy->kernel_ip_output_policies[i]);
   policy->kernel_ip_output_policies[i] = 0;
  }
 }

 policy->applied = FALSE;

 return (TRUE);
}
