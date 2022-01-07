
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_route_rule_list {int dummy; } ;
struct necp_route_rule {scalar_t__ refcount; int id; } ;


 int FALSE ;
 int FREE (struct necp_route_rule*,int ) ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LIST_REMOVE (struct necp_route_rule*,int ) ;
 int M_NECP ;
 int TRUE ;
 int chain ;
 int necp_kernel_policy_lock ;
 struct necp_route_rule* necp_lookup_route_rule_locked (struct necp_route_rule_list*,int ) ;
 int necp_remove_aggregate_route_rule_for_id (int ) ;

__attribute__((used)) static bool
necp_remove_route_rule(struct necp_route_rule_list *list, u_int32_t route_rule_id)
{
 struct necp_route_rule *existing_rule = ((void*)0);

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 existing_rule = necp_lookup_route_rule_locked(list, route_rule_id);
 if (existing_rule != ((void*)0)) {
  if (--existing_rule->refcount == 0) {
   necp_remove_aggregate_route_rule_for_id(existing_rule->id);
   LIST_REMOVE(existing_rule, chain);
   FREE(existing_rule, M_NECP);
  }
  return (TRUE);
 }

 return (FALSE);
}
