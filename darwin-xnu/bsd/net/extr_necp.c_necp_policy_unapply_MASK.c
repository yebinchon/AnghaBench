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
struct necp_session_policy {scalar_t__ applied_route_rules_id; scalar_t__* kernel_socket_policies; scalar_t__* kernel_ip_output_policies; int applied; int /*<<< orphan*/ * applied_account; int /*<<< orphan*/  applied_result_uuid; int /*<<< orphan*/  applied_real_app_uuid; int /*<<< orphan*/  applied_app_uuid; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int MAX_KERNEL_IP_OUTPUT_POLICIES ; 
 int MAX_KERNEL_SOCKET_POLICIES ; 
 int /*<<< orphan*/  M_NECP ; 
 int TRUE ; 
 int /*<<< orphan*/  necp_account_id_list ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  necp_kernel_policy_lock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  necp_num_uuid_app_id_mappings ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  necp_route_rules ; 
 int necp_uuid_app_id_mappings_dirty ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10(struct necp_session_policy *policy)
{
	int i = 0;
	if (policy == NULL) {
		return (FALSE);
	}

	FUNC1(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

	// Release local uuid mappings
	if (!FUNC9(policy->applied_app_uuid)) {
		bool removed_mapping = FALSE;
		if (FUNC6(policy->applied_app_uuid, &removed_mapping, TRUE) && removed_mapping) {
			necp_uuid_app_id_mappings_dirty = TRUE;
			necp_num_uuid_app_id_mappings--;
		}
		FUNC8(policy->applied_app_uuid);
	}
	if (!FUNC9(policy->applied_real_app_uuid)) {
		FUNC6(policy->applied_real_app_uuid, NULL, FALSE);
		FUNC8(policy->applied_real_app_uuid);
	}
	if (!FUNC9(policy->applied_result_uuid)) {
		FUNC7(policy->applied_result_uuid);
		FUNC8(policy->applied_result_uuid);
	}

	// Release string mappings
	if (policy->applied_account != NULL) {
		FUNC5(&necp_account_id_list, policy->applied_account);
		FUNC0(policy->applied_account, M_NECP);
		policy->applied_account = NULL;
	}

	// Release route rule
	if (policy->applied_route_rules_id != 0) {
		FUNC4(&necp_route_rules, policy->applied_route_rules_id);
		policy->applied_route_rules_id = 0;
	}

	// Remove socket policies
	for (i = 0; i < MAX_KERNEL_SOCKET_POLICIES; i++) {
		if (policy->kernel_socket_policies[i] != 0) {
			FUNC3(policy->kernel_socket_policies[i]);
			policy->kernel_socket_policies[i] = 0;
		}
	}

	// Remove IP output policies
	for (i = 0; i < MAX_KERNEL_IP_OUTPUT_POLICIES; i++) {
		if (policy->kernel_ip_output_policies[i] != 0) {
			FUNC2(policy->kernel_ip_output_policies[i]);
			policy->kernel_ip_output_policies[i] = 0;
		}
	}

	policy->applied = FALSE;

	return (TRUE);
}