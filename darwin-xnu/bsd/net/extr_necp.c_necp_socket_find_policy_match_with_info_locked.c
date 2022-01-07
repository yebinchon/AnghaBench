
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct substring {int length; int string; } ;
struct necp_socket_info {int protocol; int bound_interface_index; int real_application_id; int application_id; int remote_addr; int local_addr; int traffic_class; int uid; int pid; int account_id; int cred_result; scalar_t__ domain; } ;
struct TYPE_5__ {char* identifier; scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ route_rule_id; scalar_t__ netagent_id; scalar_t__ skip_policy_order; TYPE_1__ service; int filter_control_unit; } ;
struct necp_kernel_socket_policy {scalar_t__ session_order; scalar_t__ order; scalar_t__ result; int id; TYPE_2__ result_parameter; } ;
struct necp_client_parameter_netagent_type {int dummy; } ;
typedef int proc_t ;
struct TYPE_7__ {char* identifier; scalar_t__ data; } ;
typedef TYPE_3__ necp_kernel_policy_service ;
typedef scalar_t__ necp_kernel_policy_result ;
typedef int necp_kernel_policy_id ;
typedef int necp_kernel_policy_filter ;


 int LOG_DEBUG ;
 int MAX_AGGREGATE_ROUTE_RULES ;
 int NECPLOG (int ,char*,int ,int ,int ,int ,char*,...) ;
 scalar_t__ NECP_AGENT_USE_FLAG_SCOPE ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_ROUTE_RULES ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SKIP ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SOCKET_FILTER ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_USE_NETAGENT ;
 int necp_count_dots (int ,int ) ;
 scalar_t__ necp_create_aggregate_route_rule (scalar_t__*) ;
 int necp_debug ;
 scalar_t__ necp_drop_all_order ;
 scalar_t__ necp_kernel_socket_result_is_trigger_service_type (struct necp_kernel_socket_policy*) ;
 scalar_t__ necp_socket_check_policy (struct necp_kernel_socket_policy*,int ,int ,int ,int ,struct substring,int ,int ,int ,int ,int ,int ,int *,int *,struct necp_client_parameter_netagent_type*,scalar_t__,int ) ;
 struct substring necp_trim_dots_and_stars (scalar_t__,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static inline struct necp_kernel_socket_policy *
necp_socket_find_policy_match_with_info_locked(struct necp_kernel_socket_policy **policy_search_array, struct necp_socket_info *info,
              necp_kernel_policy_filter *return_filter, u_int32_t *return_route_rule_id,
              necp_kernel_policy_result *return_service_action, necp_kernel_policy_service *return_service,
              u_int32_t *return_netagent_array, u_int32_t *return_netagent_use_flags_array, size_t netagent_array_count,
              struct necp_client_parameter_netagent_type *required_agent_types,
              u_int32_t num_required_agent_types, proc_t proc, necp_kernel_policy_id *skip_policy_id)
{
 struct necp_kernel_socket_policy *matched_policy = ((void*)0);
 u_int32_t skip_order = 0;
 u_int32_t skip_session_order = 0;
 u_int32_t route_rule_id_array[MAX_AGGREGATE_ROUTE_RULES];
 size_t route_rule_id_count = 0;
 int i;
 size_t netagent_cursor = 0;


 struct substring domain_substring = necp_trim_dots_and_stars(info->domain, info->domain ? strlen(info->domain) : 0);
 u_int8_t domain_dot_count = necp_count_dots(domain_substring.string, domain_substring.length);

 if (return_filter) {
  *return_filter = 0;
 }

 if (return_route_rule_id) {
  *return_route_rule_id = 0;
 }

 if (return_service_action) {
  *return_service_action = 0;
 }

 if (return_service) {
  return_service->identifier = 0;
  return_service->data = 0;
 }

 if (policy_search_array != ((void*)0)) {
  for (i = 0; policy_search_array[i] != ((void*)0); i++) {
   if (necp_drop_all_order != 0 && policy_search_array[i]->session_order >= necp_drop_all_order) {

    break;
   }
   if (skip_session_order && policy_search_array[i]->session_order >= skip_session_order) {

    skip_order = 0;
    skip_session_order = 0;
   }
   if (skip_order) {
    if (policy_search_array[i]->order < skip_order) {

     continue;
    } else {

     skip_order = 0;
     skip_session_order = 0;
    }
   } else if (skip_session_order) {

    continue;
   }
   if (necp_socket_check_policy(policy_search_array[i], info->application_id, info->real_application_id, info->cred_result, info->account_id, domain_substring, domain_dot_count, info->pid, info->uid, info->bound_interface_index, info->traffic_class, info->protocol, &info->local_addr, &info->remote_addr, required_agent_types, num_required_agent_types, proc)) {
    if (policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_SOCKET_FILTER) {
     if (return_filter && *return_filter == 0) {
      *return_filter = policy_search_array[i]->result_parameter.filter_control_unit;
      if (necp_debug > 1) {
       NECPLOG(LOG_DEBUG, "Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Filter %d", info->application_id, info->real_application_id, info->bound_interface_index, info->protocol, policy_search_array[i]->result_parameter.filter_control_unit);
      }
     }
     continue;
    } else if (policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_ROUTE_RULES) {
     if (return_route_rule_id && route_rule_id_count < MAX_AGGREGATE_ROUTE_RULES) {
      route_rule_id_array[route_rule_id_count++] = policy_search_array[i]->result_parameter.route_rule_id;
      if (necp_debug > 1) {
       NECPLOG(LOG_DEBUG, "Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Route Rule %d", info->application_id, info->real_application_id, info->bound_interface_index, info->protocol, policy_search_array[i]->result_parameter.route_rule_id);
      }
     }
     continue;
    } else if (necp_kernel_socket_result_is_trigger_service_type(policy_search_array[i])) {
     if (return_service_action && *return_service_action == 0) {
      *return_service_action = policy_search_array[i]->result;
      if (necp_debug > 1) {
       NECPLOG(LOG_DEBUG, "Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Service Action %d", info->application_id, info->real_application_id, info->bound_interface_index, info->protocol, policy_search_array[i]->result);
      }
     }
     if (return_service && return_service->identifier == 0) {
      return_service->identifier = policy_search_array[i]->result_parameter.service.identifier;
      return_service->data = policy_search_array[i]->result_parameter.service.data;
      if (necp_debug > 1) {
       NECPLOG(LOG_DEBUG, "Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Service ID %d Data %d", info->application_id, info->real_application_id, info->bound_interface_index, info->protocol, policy_search_array[i]->result_parameter.service.identifier, policy_search_array[i]->result_parameter.service.data);
      }
     }
     continue;
    } else if (policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_USE_NETAGENT ||
         policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED) {
     if (return_netagent_array != ((void*)0) &&
      netagent_cursor < netagent_array_count) {
      return_netagent_array[netagent_cursor] = policy_search_array[i]->result_parameter.netagent_id;
      if (return_netagent_use_flags_array != ((void*)0) &&
       policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED) {
       return_netagent_use_flags_array[netagent_cursor] |= NECP_AGENT_USE_FLAG_SCOPE;
      }
      netagent_cursor++;
      if (necp_debug > 1) {
       NECPLOG(LOG_DEBUG, "Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) %s Netagent %d",
         info->application_id, info->real_application_id, info->bound_interface_index, info->protocol,
         policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_USE_NETAGENT ? "Use" : "Scope",
         policy_search_array[i]->result_parameter.netagent_id);
      }
     }
     continue;
    }


    if (policy_search_array[i]->result == NECP_KERNEL_POLICY_RESULT_SKIP) {
     skip_order = policy_search_array[i]->result_parameter.skip_policy_order;
     skip_session_order = policy_search_array[i]->session_order + 1;
     if (skip_policy_id) {
      *skip_policy_id = policy_search_array[i]->id;
     }
     continue;
    }


    matched_policy = policy_search_array[i];
    break;
   }
  }
 }

 if (route_rule_id_count == 1) {
  *return_route_rule_id = route_rule_id_array[0];
 } else if (route_rule_id_count > 1) {
  *return_route_rule_id = necp_create_aggregate_route_rule(route_rule_id_array);
 }
 return (matched_policy);
}
