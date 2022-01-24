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
typedef  char* u_int32_t ;
struct necp_route_rule {scalar_t__ default_action; scalar_t__* exception_if_indices; scalar_t__* exception_if_actions; scalar_t__ cellular_action; scalar_t__ wifi_action; scalar_t__ wired_action; scalar_t__ expensive_action; } ;
struct ifnet {scalar_t__ if_index; char* if_xname; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAX_ROUTE_RULE_INTERFACES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,int,...) ; 
 scalar_t__ NECP_ROUTE_RULE_QOS_MARKING ; 
 int TRUE ; 
 int necp_debug ; 
 struct necp_route_rule* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  necp_route_rules ; 

__attribute__((used)) static bool
FUNC6(struct ifnet *ifp, u_int32_t route_rule_id)
{
	bool qos_marking = FALSE;
	int exception_index = 0;
	struct necp_route_rule *route_rule = NULL;

	route_rule = FUNC5(&necp_route_rules, route_rule_id);
	if (route_rule == NULL) {
		qos_marking = FALSE;
		goto done;
	}

	qos_marking = (route_rule->default_action == NECP_ROUTE_RULE_QOS_MARKING) ? TRUE : FALSE;

	if (ifp == NULL) {
		goto done;
	}

	for (exception_index = 0; exception_index < MAX_ROUTE_RULE_INTERFACES; exception_index++) {
		if (route_rule->exception_if_indices[exception_index] == 0) {
			break;
		}
		if (route_rule->exception_if_actions[exception_index] != NECP_ROUTE_RULE_QOS_MARKING) {
			continue;
		}
		if (route_rule->exception_if_indices[exception_index] == ifp->if_index) {
			qos_marking = TRUE;
			if (necp_debug > 2) {
				FUNC4(LOG_DEBUG, "QoS Marking : Interface match %d for Rule %d Allowed %d",
				    route_rule->exception_if_indices[exception_index], route_rule_id, qos_marking);
			}
			goto done;
		}
	}

	if ((route_rule->cellular_action == NECP_ROUTE_RULE_QOS_MARKING && FUNC0(ifp)) ||
	    (route_rule->wifi_action == NECP_ROUTE_RULE_QOS_MARKING && FUNC2(ifp)) ||
	    (route_rule->wired_action == NECP_ROUTE_RULE_QOS_MARKING && FUNC3(ifp)) ||
	    (route_rule->expensive_action == NECP_ROUTE_RULE_QOS_MARKING && FUNC1(ifp))) {
		qos_marking = TRUE;
		if (necp_debug > 2) {
			FUNC4(LOG_DEBUG, "QoS Marking: C:%d WF:%d W:%d E:%d for Rule %d Allowed %d",
			    route_rule->cellular_action, route_rule->wifi_action, route_rule->wired_action,
			    route_rule->expensive_action, route_rule_id, qos_marking);
		}
		goto done;
	}
done:
	if (necp_debug > 1) {
		FUNC4(LOG_DEBUG, "QoS Marking: Rule %d ifp %s Allowed %d",
		    route_rule_id, ifp ? ifp->if_xname : "", qos_marking);
	}
	return (qos_marking);
}