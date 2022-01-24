#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ start_tc; scalar_t__ end_tc; } ;
struct TYPE_3__ {scalar_t__ skip_policy_order; } ;
struct necp_kernel_socket_policy {scalar_t__ session_order; scalar_t__ order; scalar_t__ result; int condition_mask; int condition_negated_mask; scalar_t__ cond_account_id; scalar_t__ cond_policy_id; scalar_t__ cond_app_id; scalar_t__ cond_real_app_id; scalar_t__ cond_pid; scalar_t__ cond_uid; scalar_t__ cond_bound_interface; scalar_t__ cond_protocol; scalar_t__ cond_local_prefix; scalar_t__ cond_remote_prefix; int /*<<< orphan*/  cond_agent_type; int /*<<< orphan*/  cond_remote_start; int /*<<< orphan*/  cond_remote_end; int /*<<< orphan*/  cond_local_start; int /*<<< orphan*/  cond_local_end; TYPE_2__ cond_traffic_class; int /*<<< orphan*/  cond_custom_entitlement; int /*<<< orphan*/  cond_domain; TYPE_1__ result_parameter; } ;

/* Variables and functions */
 int FALSE ; 
 int NECP_KERNEL_CONDITION_ACCOUNT_ID ; 
 int NECP_KERNEL_CONDITION_AGENT_TYPE ; 
 int NECP_KERNEL_CONDITION_ALL_INTERFACES ; 
 int NECP_KERNEL_CONDITION_APP_ID ; 
 int NECP_KERNEL_CONDITION_BOUND_INTERFACE ; 
 int NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT ; 
 int NECP_KERNEL_CONDITION_DOMAIN ; 
 int NECP_KERNEL_CONDITION_LOCAL_END ; 
 int NECP_KERNEL_CONDITION_LOCAL_PREFIX ; 
 int NECP_KERNEL_CONDITION_LOCAL_START ; 
 int NECP_KERNEL_CONDITION_PID ; 
 int NECP_KERNEL_CONDITION_POLICY_ID ; 
 int NECP_KERNEL_CONDITION_PROTOCOL ; 
 int NECP_KERNEL_CONDITION_REAL_APP_ID ; 
 int NECP_KERNEL_CONDITION_REMOTE_END ; 
 int NECP_KERNEL_CONDITION_REMOTE_PREFIX ; 
 int NECP_KERNEL_CONDITION_REMOTE_START ; 
 int NECP_KERNEL_CONDITION_TRAFFIC_CLASS ; 
 int NECP_KERNEL_CONDITION_UID ; 
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SKIP ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,struct sockaddr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,struct sockaddr*,struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct necp_kernel_socket_policy*,struct necp_kernel_socket_policy*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct necp_kernel_socket_policy *policy, struct necp_kernel_socket_policy **policy_array, int valid_indices)
{
	bool can_skip = FALSE;
	u_int32_t highest_skip_session_order = 0;
	u_int32_t highest_skip_order = 0;
	int i;
	for (i = 0; i < valid_indices; i++) {
		struct necp_kernel_socket_policy *compared_policy = policy_array[i];

		// For policies in a skip window, we can't mark conflicting policies as unnecessary
		if (can_skip) {
			if (highest_skip_session_order != compared_policy->session_order ||
				(highest_skip_order != 0 && compared_policy->order >= highest_skip_order)) {
				// If we've moved on to the next session, or passed the skip window
				highest_skip_session_order = 0;
				highest_skip_order = 0;
				can_skip = FALSE;
			} else {
				// If this policy is also a skip, in can increase the skip window
				if (compared_policy->result == NECP_KERNEL_POLICY_RESULT_SKIP) {
					if (compared_policy->result_parameter.skip_policy_order > highest_skip_order) {
						highest_skip_order = compared_policy->result_parameter.skip_policy_order;
					}
				}
				continue;
			}
		}

		if (compared_policy->result == NECP_KERNEL_POLICY_RESULT_SKIP) {
			// This policy is a skip. Set the skip window accordingly
			can_skip = TRUE;
			highest_skip_session_order = compared_policy->session_order;
			highest_skip_order = compared_policy->result_parameter.skip_policy_order;
		}

		// The result of the compared policy must be able to block out this policy result
		if (!FUNC3(compared_policy, policy)) {
			continue;
		}

		// If new policy matches All Interfaces, compared policy must also
		if ((policy->condition_mask & NECP_KERNEL_CONDITION_ALL_INTERFACES) && !(compared_policy->condition_mask & NECP_KERNEL_CONDITION_ALL_INTERFACES)) {
			continue;
		}

		// Default makes lower policies unecessary always
		if (compared_policy->condition_mask == 0) {
			return (TRUE);
		}

		// Compared must be more general than policy, and include only conditions within policy
		if ((policy->condition_mask & compared_policy->condition_mask) != compared_policy->condition_mask) {
			continue;
		}

		// Negative conditions must match for the overlapping conditions
		if ((policy->condition_negated_mask & compared_policy->condition_mask) != (compared_policy->condition_negated_mask & compared_policy->condition_mask)) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_DOMAIN &&
			FUNC4(compared_policy->cond_domain, policy->cond_domain) != 0) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT &&
			FUNC4(compared_policy->cond_custom_entitlement, policy->cond_custom_entitlement) != 0) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_ACCOUNT_ID &&
			compared_policy->cond_account_id != policy->cond_account_id) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_POLICY_ID &&
			compared_policy->cond_policy_id != policy->cond_policy_id) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_APP_ID &&
			compared_policy->cond_app_id != policy->cond_app_id) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REAL_APP_ID &&
			compared_policy->cond_real_app_id != policy->cond_real_app_id) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_PID &&
			compared_policy->cond_pid != policy->cond_pid) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_UID &&
			compared_policy->cond_uid != policy->cond_uid) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_BOUND_INTERFACE &&
			compared_policy->cond_bound_interface != policy->cond_bound_interface) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_PROTOCOL &&
			compared_policy->cond_protocol != policy->cond_protocol) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_TRAFFIC_CLASS &&
			!(compared_policy->cond_traffic_class.start_tc <= policy->cond_traffic_class.start_tc &&
			  compared_policy->cond_traffic_class.end_tc >= policy->cond_traffic_class.end_tc)) {
			continue;
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_START) {
			if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_END) {
				if (!FUNC2((struct sockaddr *)&policy->cond_local_start, (struct sockaddr *)&policy->cond_local_end, (struct sockaddr *)&compared_policy->cond_local_start, (struct sockaddr *)&compared_policy->cond_local_end)) {
					continue;
				}
			} else if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_LOCAL_PREFIX) {
				if (compared_policy->cond_local_prefix > policy->cond_local_prefix ||
					!FUNC1((struct sockaddr *)&policy->cond_local_start, (struct sockaddr *)&compared_policy->cond_local_start, compared_policy->cond_local_prefix)) {
					continue;
				}
			}
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_START) {
			if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_END) {
				if (!FUNC2((struct sockaddr *)&policy->cond_remote_start, (struct sockaddr *)&policy->cond_remote_end, (struct sockaddr *)&compared_policy->cond_remote_start, (struct sockaddr *)&compared_policy->cond_remote_end)) {
					continue;
				}
			} else if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_REMOTE_PREFIX) {
				if (compared_policy->cond_remote_prefix > policy->cond_remote_prefix ||
					!FUNC1((struct sockaddr *)&policy->cond_remote_start, (struct sockaddr *)&compared_policy->cond_remote_start, compared_policy->cond_remote_prefix)) {
					continue;
				}
			}
		}

		if (compared_policy->condition_mask & NECP_KERNEL_CONDITION_AGENT_TYPE &&
			FUNC0(&compared_policy->cond_agent_type, &policy->cond_agent_type, sizeof(policy->cond_agent_type)) == 0) {
			continue;
		}

		return (TRUE);
	}

	return (FALSE);
}