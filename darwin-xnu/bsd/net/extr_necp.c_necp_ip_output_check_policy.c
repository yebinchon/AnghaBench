
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union necp_sockaddr_union {int dummy; } necp_sockaddr_union ;
typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;
struct sockaddr {int dummy; } ;
struct necp_kernel_ip_output_policy {int condition_mask; int condition_negated_mask; scalar_t__ result; scalar_t__ cond_policy_id; scalar_t__ cond_last_interface_index; scalar_t__ cond_protocol; int cond_remote_prefix; int cond_remote_start; int cond_remote_end; int cond_local_prefix; int cond_local_start; int cond_local_end; TYPE_1__* cond_bound_interface; } ;
typedef scalar_t__ necp_kernel_policy_id ;
struct TYPE_2__ {scalar_t__ if_index; } ;


 int FALSE ;
 int NECP_KERNEL_CONDITION_ALL_INTERFACES ;
 int NECP_KERNEL_CONDITION_BOUND_INTERFACE ;
 int NECP_KERNEL_CONDITION_LAST_INTERFACE ;
 int NECP_KERNEL_CONDITION_LOCAL_END ;
 int NECP_KERNEL_CONDITION_LOCAL_PREFIX ;
 int NECP_KERNEL_CONDITION_LOCAL_START ;
 int NECP_KERNEL_CONDITION_POLICY_ID ;
 int NECP_KERNEL_CONDITION_PROTOCOL ;
 int NECP_KERNEL_CONDITION_REMOTE_END ;
 int NECP_KERNEL_CONDITION_REMOTE_PREFIX ;
 int NECP_KERNEL_CONDITION_REMOTE_START ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SKIP ;
 int TRUE ;
 int necp_is_addr_in_range (struct sockaddr*,struct sockaddr*,struct sockaddr*) ;
 int necp_is_addr_in_subnet (struct sockaddr*,struct sockaddr*,int ) ;

__attribute__((used)) static bool
necp_ip_output_check_policy(struct necp_kernel_ip_output_policy *kernel_policy, necp_kernel_policy_id socket_policy_id, necp_kernel_policy_id socket_skip_policy_id, u_int32_t bound_interface_index, u_int32_t last_interface_index, u_int16_t protocol, union necp_sockaddr_union *local, union necp_sockaddr_union *remote)
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

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_POLICY_ID) {
  necp_kernel_policy_id matched_policy_id =
   kernel_policy->result == NECP_KERNEL_POLICY_RESULT_SKIP ? socket_skip_policy_id : socket_policy_id;
  if (matched_policy_id != kernel_policy->cond_policy_id) {

   return (FALSE);
  }
 }

 if (kernel_policy->condition_mask & NECP_KERNEL_CONDITION_LAST_INTERFACE) {
  if (last_interface_index != kernel_policy->cond_last_interface_index) {
   return (FALSE);
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
