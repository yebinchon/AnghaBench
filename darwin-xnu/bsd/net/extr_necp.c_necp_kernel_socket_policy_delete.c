
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_kernel_socket_policy {int * cond_custom_entitlement; int * cond_domain; int * cond_bound_interface; } ;
typedef int necp_kernel_policy_id ;


 int FALSE ;
 int FREE (int *,int ) ;
 int FREE_ZONE (struct necp_kernel_socket_policy*,int,int ) ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LIST_REMOVE (struct necp_kernel_socket_policy*,int ) ;
 int M_NECP ;
 int M_NECP_SOCKET_POLICY ;
 int TRUE ;
 int chain ;
 int ifnet_release (int *) ;
 int necp_kernel_policy_lock ;
 struct necp_kernel_socket_policy* necp_kernel_socket_policy_find (int ) ;

__attribute__((used)) static bool
necp_kernel_socket_policy_delete(necp_kernel_policy_id policy_id)
{
 struct necp_kernel_socket_policy *policy = ((void*)0);

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 policy = necp_kernel_socket_policy_find(policy_id);
 if (policy) {
  LIST_REMOVE(policy, chain);

  if (policy->cond_bound_interface) {
   ifnet_release(policy->cond_bound_interface);
   policy->cond_bound_interface = ((void*)0);
  }

  if (policy->cond_domain) {
   FREE(policy->cond_domain, M_NECP);
   policy->cond_domain = ((void*)0);
  }

  if (policy->cond_custom_entitlement) {
   FREE(policy->cond_custom_entitlement, M_NECP);
   policy->cond_custom_entitlement = ((void*)0);
  }

  FREE_ZONE(policy, sizeof(*policy), M_NECP_SOCKET_POLICY);
  return (TRUE);
 }

 return (FALSE);
}
