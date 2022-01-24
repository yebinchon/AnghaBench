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
struct necp_session_policy {int /*<<< orphan*/ * route_rules; int /*<<< orphan*/ * conditions; int /*<<< orphan*/ * result; } ;
struct necp_session {int dummy; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_session_policy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_session_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  M_NECP ; 
 int /*<<< orphan*/  M_NECP_SESSION_POLICY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  chain ; 
 scalar_t__ necp_debug ; 

__attribute__((used)) static bool
FUNC4(struct necp_session *session, struct necp_session_policy *policy)
{
	if (session == NULL || policy == NULL) {
		return (FALSE);
	}

	FUNC2(policy, chain);

	if (policy->result) {
		FUNC0(policy->result, M_NECP);
		policy->result = NULL;
	}

	if (policy->conditions) {
		FUNC0(policy->conditions, M_NECP);
		policy->conditions = NULL;
	}

	if (policy->route_rules) {
		FUNC0(policy->route_rules, M_NECP);
		policy->route_rules = NULL;
	}

	FUNC1(policy, sizeof(*policy), M_NECP_SESSION_POLICY);

	if (necp_debug) {
		FUNC3(LOG_DEBUG, "Removed NECP policy");
	}
	return (TRUE);
}