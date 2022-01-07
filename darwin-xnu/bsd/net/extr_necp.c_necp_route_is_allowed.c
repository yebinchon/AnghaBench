
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct rtentry {int dummy; } ;
struct necp_aggregate_route_rule {scalar_t__* rule_ids; } ;
struct ifnet {int dummy; } ;


 int FALSE ;
 int LOG_DEBUG ;
 int MAX_AGGREGATE_ROUTE_RULES ;
 int NECPLOG (int ,char*,scalar_t__,int) ;
 scalar_t__ ROUTE_RULE_IS_AGGREGATE (scalar_t__) ;
 int TRUE ;
 int necp_debug ;
 struct necp_aggregate_route_rule* necp_lookup_aggregate_route_rule_locked (scalar_t__) ;
 int necp_route_is_allowed_inner (struct rtentry*,struct ifnet*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static bool
necp_route_is_allowed(struct rtentry *route, struct ifnet *interface, u_int32_t route_rule_id, u_int32_t *interface_type_denied)
{
 if ((route == ((void*)0) && interface == ((void*)0)) || route_rule_id == 0) {
  if (necp_debug > 1) {
   NECPLOG(LOG_DEBUG, "Route Allowed: no route or interface, Rule %d Allowed %d", route_rule_id, TRUE);
  }
  return (TRUE);
 }

 if (ROUTE_RULE_IS_AGGREGATE(route_rule_id)) {
  struct necp_aggregate_route_rule *aggregate_route_rule = necp_lookup_aggregate_route_rule_locked(route_rule_id);
  if (aggregate_route_rule != ((void*)0)) {
   int index = 0;
   for (index = 0; index < MAX_AGGREGATE_ROUTE_RULES; index++) {
    u_int32_t sub_route_rule_id = aggregate_route_rule->rule_ids[index];
    if (sub_route_rule_id == 0) {
     break;
    }
    if (!necp_route_is_allowed_inner(route, interface, sub_route_rule_id, interface_type_denied)) {
     return (FALSE);
    }
   }
  }
 } else {
  return (necp_route_is_allowed_inner(route, interface, route_rule_id, interface_type_denied));
 }

 return (TRUE);
}
