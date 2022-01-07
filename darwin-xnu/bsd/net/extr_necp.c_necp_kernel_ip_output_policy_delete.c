
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_kernel_ip_output_policy {int * cond_bound_interface; } ;
typedef int necp_kernel_policy_id ;


 int FALSE ;
 int FREE_ZONE (struct necp_kernel_ip_output_policy*,int,int ) ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LIST_REMOVE (struct necp_kernel_ip_output_policy*,int ) ;
 int M_NECP_IP_POLICY ;
 int TRUE ;
 int chain ;
 int ifnet_release (int *) ;
 struct necp_kernel_ip_output_policy* necp_kernel_ip_output_policy_find (int ) ;
 int necp_kernel_policy_lock ;

__attribute__((used)) static bool
necp_kernel_ip_output_policy_delete(necp_kernel_policy_id policy_id)
{
 struct necp_kernel_ip_output_policy *policy = ((void*)0);

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 policy = necp_kernel_ip_output_policy_find(policy_id);
 if (policy) {
  LIST_REMOVE(policy, chain);

  if (policy->cond_bound_interface) {
   ifnet_release(policy->cond_bound_interface);
   policy->cond_bound_interface = ((void*)0);
  }

  FREE_ZONE(policy, sizeof(*policy), M_NECP_IP_POLICY);
  return (TRUE);
 }

 return (FALSE);
}
