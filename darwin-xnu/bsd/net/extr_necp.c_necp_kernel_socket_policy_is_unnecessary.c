
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ start_tc; scalar_t__ end_tc; } ;
struct TYPE_3__ {scalar_t__ skip_policy_order; } ;
struct necp_kernel_socket_policy {scalar_t__ session_order; scalar_t__ order; scalar_t__ result; int condition_mask; int condition_negated_mask; scalar_t__ cond_account_id; scalar_t__ cond_policy_id; scalar_t__ cond_app_id; scalar_t__ cond_real_app_id; scalar_t__ cond_pid; scalar_t__ cond_uid; scalar_t__ cond_bound_interface; scalar_t__ cond_protocol; scalar_t__ cond_local_prefix; scalar_t__ cond_remote_prefix; int cond_agent_type; int cond_remote_start; int cond_remote_end; int cond_local_start; int cond_local_end; TYPE_2__ cond_traffic_class; int cond_custom_entitlement; int cond_domain; TYPE_1__ result_parameter; } ;


 int FALSE ;
 int NECP_KERNEL_CONDITION_ACCOUNT_ID ;
 int NECP_KERNEL_CONDITION_AGENT_TYPE ;
 int NECP_KERNEL_CONDITION_ALL_INTERFACES ;
 int NECP_KERNEL_CONDITION_APP_ID ;
 int NECP_KERNEL_CONDITION_BOUND_INTERFACE ;
 int NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT ;
 int NECP_KERNEL_CONDITION_DOMAIN ;
 int NECP_KERNEL_CONDITION_LOCAL_END ;
 int NECP_KERNEL_CONDITION_LOCAL_PREFIX ;
 int NECP_KERNEL_CONDITION_LOCAL_START ;
 int NECP_KERNEL_CONDITION_PID ;
 int NECP_KERNEL_CONDITION_POLICY_ID ;
 int NECP_KERNEL_CONDITION_PROTOCOL ;
 int NECP_KERNEL_CONDITION_REAL_APP_ID ;
 int NECP_KERNEL_CONDITION_REMOTE_END ;
 int NECP_KERNEL_CONDITION_REMOTE_PREFIX ;
 int NECP_KERNEL_CONDITION_REMOTE_START ;
 int NECP_KERNEL_CONDITION_TRAFFIC_CLASS ;
 int NECP_KERNEL_CONDITION_UID ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SKIP ;
 int TRUE ;
 scalar_t__ memcmp (int *,int *,int) ;
 int necp_is_addr_in_subnet (struct sockaddr*,struct sockaddr*,scalar_t__) ;
 int necp_is_range_in_range (struct sockaddr*,struct sockaddr*,struct sockaddr*,struct sockaddr*) ;
 int necp_kernel_socket_policy_results_overlap (struct necp_kernel_socket_policy*,struct necp_kernel_socket_policy*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
necp_kernel_socket_policy_is_unnecessary(struct necp_kernel_socket_policy *policy, struct necp_kernel_socket_policy **policy_array, int valid_indices)
{
 bool can_skip = FALSE;
 u_int32_t highest_skip_session_order = 0;
 u_int32_t highest_skip_order = 0;
 int i;
 for (i = 0; i < valid_indices; i++) {
  struct necp_kernel_socket_policy *compared_policy = policy_array[i];


  if (can_skip) {
   if (highest_skip_session_order != compared_policy->session_order ||
    (highest_skip_order != 0 && compared_policy->order >= highest_skip_order)) {

    highest_skip_session_order = 0;
    highest_skip_order = 0;
    can_skip = FALSE;
   } else {

    if (compared_policy->result == NECP_KERNEL_POLICY_RESULT_SKIP) {
     if (compared_policy->result_parameter.skip_policy_order > highest_skip_order) {
      highest_skip_order = compared_policy->result_parameter.skip_policy_order;
     }
    }
    continue;
   }
  }

  if (compared_policy->result == NECP_KERNEL_POLICY_RESULT_SKIP) {

   can_skip = TRUE;
   highest_skip_session_order = compared_policy->session_order;
   highest_skip_order = compared_policy->result_parameter.skip_policy_order;
  }


  if (!necp_kernel_socket_policy_results_overlap(compared_policy, policy)) {
   continue;
  }


  if ((policy->condition_mask & NECP_KERNEL_CONDITION_ALL_INTERFACES) && !(compared_policy->condition_mask & NECP_KERNEL_CONDITION_ALL_INTERFACES)) {
   continue;
  }


  if (compared_policy->condition_mask == 0) {
   return (TRUE);
  }


  if ((policy->condition_mask & compared_policy->condition_mask) != compared_policy->condition_mask) {
   continue;
  }


  if ((policy->condition_negated_mask & compared_policy->condition_mask) != (compared_policy->condition_negated_mask & compared_policy->condition_mask)) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_DOMAIN &&
   strcmp(compared_policy->cond_domain, policy->cond_domain) != 0) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT &&
   strcmp(compared_policy->cond_custom_entitlement, policy->cond_custom_entitlement) != 0) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_ACCOUNT_ID &&
   compared_policy->cond_account_id != policy->cond_account_id) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_POLICY_ID &&
   compared_policy->cond_policy_id != policy->cond_policy_id) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_APP_ID &&
   compared_policy->cond_app_id != policy->cond_app_id) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REAL_APP_ID &&
   compared_policy->cond_real_app_id != policy->cond_real_app_id) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_PID &&
   compared_policy->cond_pid != policy->cond_pid) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_UID &&
   compared_policy->cond_uid != policy->cond_uid) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_BOUND_INTERFACE &&
   compared_policy->cond_bound_interface != policy->cond_bound_interface) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_PROTOCOL &&
   compared_policy->cond_protocol != policy->cond_protocol) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_TRAFFIC_CLASS &&
   !(compared_policy->cond_traffic_class.start_tc <= policy->cond_traffic_class.start_tc &&
     compared_policy->cond_traffic_class.end_tc >= policy->cond_traffic_class.end_tc)) {
   continue;
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_START) {
   if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_END) {
    if (!necp_is_range_in_range((struct sockaddr *)&policy->cond_local_start, (struct sockaddr *)&policy->cond_local_end, (struct sockaddr *)&compared_policy->cond_local_start, (struct sockaddr *)&compared_policy->cond_local_end)) {
     continue;
    }
   } else if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_PREFIX) {
    if (compared_policy->cond_local_prefix > policy->cond_local_prefix ||
     !necp_is_addr_in_subnet((struct sockaddr *)&policy->cond_local_start, (struct sockaddr *)&compared_policy->cond_local_start, compared_policy->cond_local_prefix)) {
     continue;
    }
   }
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_START) {
   if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_END) {
    if (!necp_is_range_in_range((struct sockaddr *)&policy->cond_remote_start, (struct sockaddr *)&policy->cond_remote_end, (struct sockaddr *)&compared_policy->cond_remote_start, (struct sockaddr *)&compared_policy->cond_remote_end)) {
     continue;
    }
   } else if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_PREFIX) {
    if (compared_policy->cond_remote_prefix > policy->cond_remote_prefix ||
     !necp_is_addr_in_subnet((struct sockaddr *)&policy->cond_remote_start, (struct sockaddr *)&compared_policy->cond_remote_start, compared_policy->cond_remote_prefix)) {
     continue;
    }
   }
  }

  if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_AGENT_TYPE &&
   memcmp(&compared_policy->cond_agent_type, &policy->cond_agent_type, sizeof(policy->cond_agent_type)) == 0) {
   continue;
  }

  return (TRUE);
 }

 return (FALSE);
}
