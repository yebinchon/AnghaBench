#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct necp_route_rule {scalar_t__ default_action; scalar_t__* exception_if_indices; scalar_t__* exception_if_actions; scalar_t__ cellular_action; scalar_t__ wifi_action; scalar_t__ wired_action; scalar_t__ expensive_action; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct ifnet {scalar_t__ if_index; TYPE_1__ if_delegated; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int IFRTYPE_FUNCTIONAL_CELLULAR ; 
 int IFRTYPE_FUNCTIONAL_WIFI_INFRA ; 
 int IFRTYPE_FUNCTIONAL_WIRED ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAX_ROUTE_RULE_INTERFACES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 scalar_t__ NECP_ROUTE_RULE_ALLOW_INTERFACE ; 
 scalar_t__ NECP_ROUTE_RULE_DENY_INTERFACE ; 
 scalar_t__ NECP_ROUTE_RULE_DENY_LQM_ABORT ; 
 scalar_t__ NECP_ROUTE_RULE_NONE ; 
 int TRUE ; 
 int necp_debug ; 
 struct necp_route_rule* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ifnet*,struct ifnet*) ; 
 int /*<<< orphan*/  necp_route_rules ; 

__attribute__((used)) static bool
FUNC8(struct rtentry *route, struct ifnet *ifp, u_int32_t route_rule_id, u_int32_t *interface_type_denied)
{
	bool default_is_allowed = TRUE;
	u_int8_t type_aggregate_action = NECP_ROUTE_RULE_NONE;
	int exception_index = 0;
	struct ifnet *delegated_ifp = NULL;
	struct necp_route_rule *route_rule = NULL;

	route_rule = FUNC6(&necp_route_rules, route_rule_id);
	if (route_rule == NULL) {
		return (TRUE);
	}

	default_is_allowed = (route_rule->default_action == NECP_ROUTE_RULE_DENY_INTERFACE) ? FALSE : TRUE;
	if (ifp == NULL) {
		ifp = route->rt_ifp;
	}
	if (ifp == NULL) {
		if (necp_debug > 1 && !default_is_allowed) {
			FUNC5(LOG_DEBUG, "Route Allowed: No interface for route, using default for Rule %d Allowed %d", route_rule_id, default_is_allowed);
		}
		return (default_is_allowed);
	}

	delegated_ifp = ifp->if_delegated.ifp;
	for (exception_index = 0; exception_index < MAX_ROUTE_RULE_INTERFACES; exception_index++) {
		if (route_rule->exception_if_indices[exception_index] == 0) {
			break;
		}
		if (route_rule->exception_if_indices[exception_index] == ifp->if_index ||
			(delegated_ifp != NULL && route_rule->exception_if_indices[exception_index] == delegated_ifp->if_index)) {
			if (route_rule->exception_if_actions[exception_index] == NECP_ROUTE_RULE_DENY_LQM_ABORT) {
				const bool lqm_abort = FUNC7(ifp, delegated_ifp);
				if (necp_debug > 1 && lqm_abort) {
					FUNC5(LOG_DEBUG, "Route Allowed: Interface match %d for Rule %d Deny LQM Abort",
							route_rule->exception_if_indices[exception_index], route_rule_id);
				}
				return false;
			} else if (FUNC4(route_rule->exception_if_actions[exception_index])) {
				if (necp_debug > 1) {
					FUNC5(LOG_DEBUG, "Route Allowed: Interface match %d for Rule %d Allowed %d", route_rule->exception_if_indices[exception_index], route_rule_id, ((route_rule->exception_if_actions[exception_index] == NECP_ROUTE_RULE_DENY_INTERFACE) ? FALSE : TRUE));
				}
				return ((route_rule->exception_if_actions[exception_index] == NECP_ROUTE_RULE_DENY_INTERFACE) ? FALSE : TRUE);
			}
		}
	}

	if (FUNC0(ifp)) {
		if (route_rule->cellular_action == NECP_ROUTE_RULE_DENY_LQM_ABORT) {
			if (FUNC7(ifp, delegated_ifp)) {
				if (interface_type_denied != NULL) {
					*interface_type_denied = IFRTYPE_FUNCTIONAL_CELLULAR;
				}
				// Mark aggregate action as deny
				type_aggregate_action = NECP_ROUTE_RULE_DENY_INTERFACE;
			}
		} else if (FUNC4(route_rule->cellular_action)) {
			if (interface_type_denied != NULL) {
				*interface_type_denied = IFRTYPE_FUNCTIONAL_CELLULAR;
			}
			if (type_aggregate_action == NECP_ROUTE_RULE_NONE ||
				(type_aggregate_action == NECP_ROUTE_RULE_ALLOW_INTERFACE &&
				 route_rule->cellular_action == NECP_ROUTE_RULE_DENY_INTERFACE)) {
					// Deny wins if there is a conflict
					type_aggregate_action = route_rule->cellular_action;
				}
		}
	}

	if (FUNC2(ifp)) {
		if (route_rule->wifi_action == NECP_ROUTE_RULE_DENY_LQM_ABORT) {
			if (FUNC7(ifp, delegated_ifp)) {
				if (interface_type_denied != NULL) {
					*interface_type_denied = IFRTYPE_FUNCTIONAL_WIFI_INFRA;
				}
				// Mark aggregate action as deny
				type_aggregate_action = NECP_ROUTE_RULE_DENY_INTERFACE;
			}
		} else if (FUNC4(route_rule->wifi_action)) {
			if (interface_type_denied != NULL) {
				*interface_type_denied = IFRTYPE_FUNCTIONAL_WIFI_INFRA;
			}
			if (type_aggregate_action == NECP_ROUTE_RULE_NONE ||
				(type_aggregate_action == NECP_ROUTE_RULE_ALLOW_INTERFACE &&
				 route_rule->wifi_action == NECP_ROUTE_RULE_DENY_INTERFACE)) {
					// Deny wins if there is a conflict
					type_aggregate_action = route_rule->wifi_action;
				}
		}
	}

	if (FUNC3(ifp)) {
		if (route_rule->wired_action == NECP_ROUTE_RULE_DENY_LQM_ABORT) {
			if (FUNC7(ifp, delegated_ifp)) {
				if (interface_type_denied != NULL) {
					*interface_type_denied = IFRTYPE_FUNCTIONAL_WIRED;
				}
				// Mark aggregate action as deny
				type_aggregate_action = NECP_ROUTE_RULE_DENY_INTERFACE;
			}
		} else if (FUNC4(route_rule->wired_action)) {
			if (interface_type_denied != NULL) {
				*interface_type_denied = IFRTYPE_FUNCTIONAL_WIRED;
			}
			if (type_aggregate_action == NECP_ROUTE_RULE_NONE ||
				(type_aggregate_action == NECP_ROUTE_RULE_ALLOW_INTERFACE &&
				 route_rule->wired_action == NECP_ROUTE_RULE_DENY_INTERFACE)) {
					// Deny wins if there is a conflict
					type_aggregate_action = route_rule->wired_action;
				}
		}
	}

	if (FUNC1(ifp)) {
		if (route_rule->expensive_action == NECP_ROUTE_RULE_DENY_LQM_ABORT) {
			if (FUNC7(ifp, delegated_ifp)) {
				// Mark aggregate action as deny
				type_aggregate_action = NECP_ROUTE_RULE_DENY_INTERFACE;
			}
		} else if (FUNC4(route_rule->expensive_action)) {
			if (type_aggregate_action == NECP_ROUTE_RULE_NONE ||
				(type_aggregate_action == NECP_ROUTE_RULE_ALLOW_INTERFACE &&
				 route_rule->expensive_action == NECP_ROUTE_RULE_DENY_INTERFACE)) {
					// Deny wins if there is a conflict
					type_aggregate_action = route_rule->expensive_action;
				}
		}
	}

	if (type_aggregate_action != NECP_ROUTE_RULE_NONE) {
		if (necp_debug > 1) {
			FUNC5(LOG_DEBUG, "Route Allowed: C:%d WF:%d W:%d E:%d for Rule %d Allowed %d", route_rule->cellular_action, route_rule->wifi_action, route_rule->wired_action, route_rule->expensive_action, route_rule_id, ((type_aggregate_action == NECP_ROUTE_RULE_DENY_INTERFACE) ? FALSE : TRUE));
		}
		return ((type_aggregate_action == NECP_ROUTE_RULE_DENY_INTERFACE) ? FALSE : TRUE);
	}

	if (necp_debug > 1 && !default_is_allowed) {
		FUNC5(LOG_DEBUG, "Route Allowed: Using default for Rule %d Allowed %d", route_rule_id, default_is_allowed);
	}
	return (default_is_allowed);
}