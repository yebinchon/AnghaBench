
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 int FALSE ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 scalar_t__ NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID ;
 scalar_t__ NECP_FIRST_VALID_ROUTE_RULE_ID ;
 int TRUE ;
 int necp_kernel_policy_lock ;
 int * necp_lookup_route_rule_locked (int *,scalar_t__) ;
 int necp_route_rule_lock ;
 int necp_route_rules ;

__attribute__((used)) static u_int32_t
necp_get_new_route_rule_id(bool aggregate)
{
 static u_int32_t necp_last_route_rule_id = 0;
 static u_int32_t necp_last_aggregate_route_rule_id = 0;

 u_int32_t newid = 0;

 if (!aggregate) {

  LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

  bool wrapped = FALSE;
  do {
   necp_last_route_rule_id++;
   if (necp_last_route_rule_id < NECP_FIRST_VALID_ROUTE_RULE_ID ||
    necp_last_route_rule_id >= NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID) {
    if (wrapped) {

     NECPLOG0(LOG_ERR, "Failed to find a free route rule id.\n");
     return (0);
    }
    necp_last_route_rule_id = NECP_FIRST_VALID_ROUTE_RULE_ID;
    wrapped = TRUE;
   }
   newid = necp_last_route_rule_id;
  } while (necp_lookup_route_rule_locked(&necp_route_rules, newid) != ((void*)0));
 } else {

  LCK_RW_ASSERT(&necp_route_rule_lock, LCK_RW_ASSERT_EXCLUSIVE);

  bool wrapped = FALSE;
  do {
   necp_last_aggregate_route_rule_id++;
   if (necp_last_aggregate_route_rule_id < NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID) {
    if (wrapped) {

     NECPLOG0(LOG_ERR, "Failed to find a free aggregate route rule id.\n");
     return (0);
    }
    necp_last_aggregate_route_rule_id = NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID;
    wrapped = TRUE;
   }
   newid = necp_last_aggregate_route_rule_id;
  } while (necp_lookup_route_rule_locked(&necp_route_rules, newid) != ((void*)0));
 }

 if (newid == 0) {
  NECPLOG0(LOG_ERR, "Allocate route rule ID failed.\n");
  return (0);
 }

 return (newid);
}
