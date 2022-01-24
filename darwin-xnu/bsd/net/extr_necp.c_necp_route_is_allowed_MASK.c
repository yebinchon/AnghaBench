#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct rtentry {int dummy; } ;
struct necp_aggregate_route_rule {scalar_t__* rule_ids; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAX_AGGREGATE_ROUTE_RULES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int TRUE ; 
 int necp_debug ; 
 struct necp_aggregate_route_rule* FUNC2 (scalar_t__) ; 
 int FUNC3 (struct rtentry*,struct ifnet*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static bool
FUNC4(struct rtentry *route, struct ifnet *interface, u_int32_t route_rule_id, u_int32_t *interface_type_denied)
{
	if ((route == NULL && interface == NULL) || route_rule_id == 0) {
		if (necp_debug > 1) {
			FUNC0(LOG_DEBUG, "Route Allowed: no route or interface, Rule %d Allowed %d", route_rule_id, TRUE);
		}
		return (TRUE);
	}

	if (FUNC1(route_rule_id)) {
		struct necp_aggregate_route_rule *aggregate_route_rule = FUNC2(route_rule_id);
		if (aggregate_route_rule != NULL) {
			int index = 0;
			for (index = 0; index < MAX_AGGREGATE_ROUTE_RULES; index++) {
				u_int32_t sub_route_rule_id = aggregate_route_rule->rule_ids[index];
				if (sub_route_rule_id == 0) {
					break;
				}
				if (!FUNC3(route, interface, sub_route_rule_id, interface_type_denied)) {
					return (FALSE);
				}
			}
		}
	} else {
		return (FUNC3(route, interface, route_rule_id, interface_type_denied));
	}

	return (TRUE);
}