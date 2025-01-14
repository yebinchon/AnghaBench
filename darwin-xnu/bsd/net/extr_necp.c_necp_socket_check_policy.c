
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union necp_sockaddr_union {int dummy; } necp_sockaddr_union ;
typedef scalar_t__ uid_t ;
typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;
typedef int * task_t ;
struct substring {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int agent_type; int agent_domain; } ;
struct TYPE_5__ {scalar_t__ start_tc; scalar_t__ end_tc; } ;
struct necp_kernel_socket_policy {int condition_mask; int condition_negated_mask; scalar_t__ cond_app_id; scalar_t__ cond_real_app_id; scalar_t__ cond_custom_entitlement_matched; scalar_t__ cond_account_id; scalar_t__ cond_pid; scalar_t__ cond_uid; scalar_t__ cond_protocol; int cond_remote_prefix; int cond_remote_start; int cond_remote_end; int cond_local_prefix; int cond_local_start; int cond_local_end; TYPE_3__ cond_agent_type; TYPE_2__ cond_traffic_class; int cond_domain_dot_count; int cond_domain; int * cond_custom_entitlement; TYPE_1__* cond_bound_interface; } ;
struct necp_client_parameter_netagent_type {int netagent_type; int netagent_domain; } ;
typedef int * proc_t ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ necp_app_id ;
typedef scalar_t__ errno_t ;
struct TYPE_4__ {scalar_t__ if_index; } ;


 int FALSE ;
 int IOTaskHasEntitlement (int *,int *) ;
 int NECP_KERNEL_CONDITION_ACCOUNT_ID ;
 int NECP_KERNEL_CONDITION_AGENT_TYPE ;
 int NECP_KERNEL_CONDITION_ALL_INTERFACES ;
 int NECP_KERNEL_CONDITION_APP_ID ;
 int NECP_KERNEL_CONDITION_BOUND_INTERFACE ;
 int NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT ;
 int NECP_KERNEL_CONDITION_DOMAIN ;
 int NECP_KERNEL_CONDITION_ENTITLEMENT ;
 int NECP_KERNEL_CONDITION_LOCAL_END ;
 int NECP_KERNEL_CONDITION_LOCAL_PREFIX ;
 int NECP_KERNEL_CONDITION_LOCAL_START ;
 int NECP_KERNEL_CONDITION_PID ;
 int NECP_KERNEL_CONDITION_PROTOCOL ;
 int NECP_KERNEL_CONDITION_REAL_APP_ID ;
 int NECP_KERNEL_CONDITION_REMOTE_END ;
 int NECP_KERNEL_CONDITION_REMOTE_PREFIX ;
 int NECP_KERNEL_CONDITION_REMOTE_START ;
 int NECP_KERNEL_CONDITION_TRAFFIC_CLASS ;
 int NECP_KERNEL_CONDITION_UID ;
 int NETAGENT_DOMAINSIZE ;
 int NETAGENT_TYPESIZE ;
 int TRUE ;
 scalar_t__ necp_boolean_state_false ;
 scalar_t__ necp_boolean_state_true ;
 scalar_t__ necp_boolean_state_unknown ;
 int necp_hostname_matches_domain (struct substring,int ,int ,int ) ;
 int necp_is_addr_in_range (struct sockaddr*,struct sockaddr*,struct sockaddr*) ;
 int necp_is_addr_in_subnet (struct sockaddr*,struct sockaddr*,int ) ;
 int * proc_task (int *) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static bool
necp_socket_check_policy(struct necp_kernel_socket_policy *kernel_policy, necp_app_id app_id, necp_app_id real_app_id, errno_t cred_result, u_int32_t account_id, struct substring domain, u_int8_t domain_dot_count, pid_t pid, uid_t uid, u_int32_t bound_interface_index, u_int32_t traffic_class, u_int16_t protocol, union necp_sockaddr_union *local, union necp_sockaddr_union *remote, struct necp_client_parameter_netagent_type *required_agent_types, u_int32_t num_required_agent_types, proc_t proc)
{
 if (!(kernel_policy->condition_mask & NECP_KERNEL_CONDITION_ALL_INTERFACES)) {
  if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_BOUND_INTERFACE) {
   u_int32_t cond_bound_interface_index = kernel_policy->cond_bound_interface ? kernel_policy->cond_bound_interface->if_index : 0;
   if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_BOUND_INTERFACE) {
    if (bound_interface_index == cond_bound_interface_index) {

     return (FALSE);
    }
   } else {
    if (bound_interface_index != cond_bound_interface_index) {

     return (FALSE);
    }
   }
  } else {
   if (bound_interface_index != 0) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask == 0) {
  return (TRUE);
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_APP_ID) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_APP_ID) {
   if (app_id == kernel_policy->cond_app_id) {

    return (FALSE);
   }
  } else {
   if (app_id != kernel_policy->cond_app_id) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_REAL_APP_ID) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_REAL_APP_ID) {
   if (real_app_id == kernel_policy->cond_real_app_id) {

    return (FALSE);
   }
  } else {
   if (real_app_id != kernel_policy->cond_real_app_id) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_ENTITLEMENT) {
  if (cred_result != 0) {

   return (FALSE);
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT) {
  if (kernel_policy->cond_custom_entitlement_matched == necp_boolean_state_false) {

   return (FALSE);
  } else if (kernel_policy->cond_custom_entitlement_matched == necp_boolean_state_unknown) {
   if (kernel_policy->cond_custom_entitlement != ((void*)0)) {
    if (proc == ((void*)0)) {

     return (FALSE);
    }
    task_t task = proc_task(proc);
    if (task == ((void*)0) ||
     !IOTaskHasEntitlement(task, kernel_policy->cond_custom_entitlement)) {

     kernel_policy->cond_custom_entitlement_matched = necp_boolean_state_false;
     return (FALSE);
    } else {
     kernel_policy->cond_custom_entitlement_matched = necp_boolean_state_true;
    }
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_DOMAIN) {
  bool domain_matches = necp_hostname_matches_domain(domain, domain_dot_count, kernel_policy->cond_domain, kernel_policy->cond_domain_dot_count);
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_DOMAIN) {
   if (domain_matches) {

    return (FALSE);
   }
  } else {
   if (!domain_matches) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_ACCOUNT_ID) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_ACCOUNT_ID) {
   if (account_id == kernel_policy->cond_account_id) {

    return (FALSE);
   }
  } else {
   if (account_id != kernel_policy->cond_account_id) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_PID) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_PID) {
   if (pid == kernel_policy->cond_pid) {

    return (FALSE);
   }
  } else {
   if (pid != kernel_policy->cond_pid) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_UID) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_UID) {
   if (uid == kernel_policy->cond_uid) {

    return (FALSE);
   }
  } else {
   if (uid != kernel_policy->cond_uid) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_TRAFFIC_CLASS) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_TRAFFIC_CLASS) {
   if (traffic_class >= kernel_policy->cond_traffic_class.start_tc &&
    traffic_class <= kernel_policy->cond_traffic_class.end_tc) {

    return (FALSE);
   }
  } else {
   if (traffic_class < kernel_policy->cond_traffic_class.start_tc ||
    traffic_class > kernel_policy->cond_traffic_class.end_tc) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_PROTOCOL) {
  if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_PROTOCOL) {
   if (protocol == kernel_policy->cond_protocol) {

    return (FALSE);
   }
  } else {
   if (protocol != kernel_policy->cond_protocol) {

    return (FALSE);
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_AGENT_TYPE) {
  bool matches_agent_type = FALSE;
  for (u_int32_t i = 0; i < num_required_agent_types; i++) {
   struct necp_client_parameter_netagent_type *required_agent_type = &required_agent_types[i];
   if ((strlen(kernel_policy->cond_agent_type.agent_domain) == 0 ||
     strncmp(required_agent_type->netagent_domain, kernel_policy->cond_agent_type.agent_domain, NETAGENT_DOMAINSIZE) == 0) &&
    (strlen(kernel_policy->cond_agent_type.agent_type) == 0 ||
     strncmp(required_agent_type->netagent_type, kernel_policy->cond_agent_type.agent_type, NETAGENT_TYPESIZE) == 0)) {

     matches_agent_type = TRUE;
     break;
    }
  }
  if (!matches_agent_type) {
   return (FALSE);
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_START) {
  if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_END) {
   bool inRange = necp_is_addr_in_range((struct sockaddr *)local, (struct sockaddr *)&kernel_policy->cond_local_start, (struct sockaddr *)&kernel_policy->cond_local_end);
   if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_LOCAL_END) {
    if (inRange) {
     return (FALSE);
    }
   } else {
    if (!inRange) {
     return (FALSE);
    }
   }
  } else if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_PREFIX) {
   bool inSubnet = necp_is_addr_in_subnet((struct sockaddr *)local, (struct sockaddr *)&kernel_policy->cond_local_start, kernel_policy->cond_local_prefix);
   if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_LOCAL_PREFIX) {
    if (inSubnet) {
     return (FALSE);
    }
   } else {
    if (!inSubnet) {
     return (FALSE);
    }
   }
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_START) {
  if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_END) {
   bool inRange = necp_is_addr_in_range((struct sockaddr *)remote, (struct sockaddr *)&kernel_policy->cond_remote_start, (struct sockaddr *)&kernel_policy->cond_remote_end);
   if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_REMOTE_END) {
    if (inRange) {
     return (FALSE);
    }
   } else {
    if (!inRange) {
     return (FALSE);
    }
   }
  } else if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_PREFIX) {
   bool inSubnet = necp_is_addr_in_subnet((struct sockaddr *)remote, (struct sockaddr *)&kernel_policy->cond_remote_start, kernel_policy->cond_remote_prefix);
   if (kernel_policy->condition_negated_mask & NECP_KERNEL_CONDITION_REMOTE_PREFIX) {
    if (inSubnet) {
     return (FALSE);
    }
   } else {
    if (!inSubnet) {
     return (FALSE);
    }
   }
  }
 }

 return (TRUE);
}
