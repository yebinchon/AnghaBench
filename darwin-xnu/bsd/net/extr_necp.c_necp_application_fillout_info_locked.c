
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_2__ {scalar_t__ sa_len; } ;
union necp_sockaddr_union {TYPE_1__ sa; } ;
typedef int uid_t ;
typedef void* u_int32_t ;
typedef int u_int16_t ;
struct necp_uuid_id_mapping {int id; } ;
struct necp_string_id_mapping {int id; } ;
struct necp_socket_info {scalar_t__ cred_result; char* domain; int remote_addr; int local_addr; int account_id; int real_application_id; int application_id; void* traffic_class; void* bound_interface_index; int protocol; int uid; int pid; } ;
typedef int * proc_t ;
typedef int pid_t ;


 int NECP_KERNEL_ADDRESS_TYPE_CONDITIONS ;
 int NECP_KERNEL_CONDITION_ACCOUNT_ID ;
 int NECP_KERNEL_CONDITION_APP_ID ;
 int NECP_KERNEL_CONDITION_DOMAIN ;
 int NECP_KERNEL_CONDITION_ENTITLEMENT ;
 int NECP_KERNEL_CONDITION_REAL_APP_ID ;
 int PRIV_NET_PRIVILEGED_NECP_MATCH ;
 int memcpy (int *,union necp_sockaddr_union*,scalar_t__) ;
 int memset (struct necp_socket_info*,int ,int) ;
 int necp_account_id_list ;
 int necp_get_parent_cred_result (int *,struct necp_socket_info*) ;
 int necp_kernel_application_policies_condition_mask ;
 struct necp_string_id_mapping* necp_lookup_string_to_id_locked (int *,char*) ;
 struct necp_uuid_id_mapping* necp_uuid_lookup_app_id_locked (int ) ;
 scalar_t__ priv_check_cred (int ,int ,int ) ;
 int proc_ucred (int *) ;
 scalar_t__ uuid_compare (int ,int ) ;
 int uuid_is_null (int ) ;

__attribute__((used)) static void
necp_application_fillout_info_locked(uuid_t application_uuid, uuid_t real_application_uuid, char *account, char *domain, pid_t pid, uid_t uid, u_int16_t protocol, u_int32_t bound_interface_index, u_int32_t traffic_class, union necp_sockaddr_union *local_addr, union necp_sockaddr_union *remote_addr, proc_t proc, struct necp_socket_info *info)
{
 memset(info, 0, sizeof(struct necp_socket_info));

 info->pid = pid;
 info->uid = uid;
 info->protocol = protocol;
 info->bound_interface_index = bound_interface_index;
 info->traffic_class = traffic_class;

 if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_ENTITLEMENT && proc != ((void*)0)) {
  info->cred_result = priv_check_cred(proc_ucred(proc), PRIV_NET_PRIVILEGED_NECP_MATCH, 0);
  if (info->cred_result != 0) {

   necp_get_parent_cred_result(proc, info);
  }
 }

 if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_APP_ID && !uuid_is_null(application_uuid)) {
  struct necp_uuid_id_mapping *existing_mapping = necp_uuid_lookup_app_id_locked(application_uuid);
  if (existing_mapping) {
   info->application_id = existing_mapping->id;
  }
 }

 if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_REAL_APP_ID && !uuid_is_null(real_application_uuid)) {
  if (uuid_compare(application_uuid, real_application_uuid) == 0) {
   info->real_application_id = info->application_id;
  } else {
   struct necp_uuid_id_mapping *existing_mapping = necp_uuid_lookup_app_id_locked(real_application_uuid);
   if (existing_mapping) {
    info->real_application_id = existing_mapping->id;
   }
  }
 }

 if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_ACCOUNT_ID && account != ((void*)0)) {
  struct necp_string_id_mapping *existing_mapping = necp_lookup_string_to_id_locked(&necp_account_id_list, account);
  if (existing_mapping) {
   info->account_id = existing_mapping->id;
  }
 }

 if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_CONDITION_DOMAIN) {
  info->domain = domain;
 }

 if (necp_kernel_application_policies_condition_mask & NECP_KERNEL_ADDRESS_TYPE_CONDITIONS) {
  if (local_addr && local_addr->sa.sa_len > 0) {
   memcpy(&info->local_addr, local_addr, local_addr->sa.sa_len);
  }
  if (remote_addr && remote_addr->sa.sa_len > 0) {
   memcpy(&info->remote_addr, remote_addr, remote_addr->sa.sa_len);
  }
 }
}
