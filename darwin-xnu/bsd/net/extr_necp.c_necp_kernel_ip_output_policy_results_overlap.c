
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ skip_policy_order; } ;
struct necp_kernel_ip_output_policy {scalar_t__ result; scalar_t__ session_order; scalar_t__ order; TYPE_1__ result_parameter; } ;


 int FALSE ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SKIP ;
 int TRUE ;

__attribute__((used)) static inline bool
necp_kernel_ip_output_policy_results_overlap(struct necp_kernel_ip_output_policy *upper_policy, struct necp_kernel_ip_output_policy *lower_policy)
{
 if (upper_policy->result == NECP_KERNEL_POLICY_RESULT_SKIP) {
  if (upper_policy->session_order != lower_policy->session_order) {

   return (FALSE);
  } else {
   if (upper_policy->result_parameter.skip_policy_order == 0 ||
    lower_policy->order >= upper_policy->result_parameter.skip_policy_order) {

    return (FALSE);
   } else {

    return (TRUE);
   }
  }
 }


 return (TRUE);
}
