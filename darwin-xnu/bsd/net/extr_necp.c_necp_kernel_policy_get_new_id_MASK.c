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
typedef  scalar_t__ necp_kernel_policy_id ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ NECP_KERNEL_POLICY_ID_FIRST_VALID_IP ; 
 scalar_t__ NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET ; 
 scalar_t__ NECP_KERNEL_POLICY_ID_NONE ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  necp_kernel_policy_lock ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 

__attribute__((used)) static necp_kernel_policy_id
FUNC4(bool socket_level)
{
	static necp_kernel_policy_id necp_last_kernel_socket_policy_id = 0;
	static necp_kernel_policy_id necp_last_kernel_ip_policy_id = 0;

	necp_kernel_policy_id newid = NECP_KERNEL_POLICY_ID_NONE;

	FUNC0(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

	if (socket_level) {
		bool wrapped = FALSE;
		do {
			necp_last_kernel_socket_policy_id++;
			if (necp_last_kernel_socket_policy_id < NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET ||
				necp_last_kernel_socket_policy_id >= NECP_KERNEL_POLICY_ID_FIRST_VALID_IP) {
				if (wrapped) {
					// Already wrapped, give up
					FUNC1(LOG_ERR, "Failed to find a free socket kernel policy ID.\n");
					return (NECP_KERNEL_POLICY_ID_NONE);
				}
				necp_last_kernel_socket_policy_id = NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET;
				wrapped = TRUE;
			}
			newid = necp_last_kernel_socket_policy_id;
		} while (FUNC3(newid) != NULL); // If already used, keep trying
	} else {
		bool wrapped = FALSE;
		do {
			necp_last_kernel_ip_policy_id++;
			if (necp_last_kernel_ip_policy_id < NECP_KERNEL_POLICY_ID_FIRST_VALID_IP) {
				if (wrapped) {
					// Already wrapped, give up
					FUNC1(LOG_ERR, "Failed to find a free IP kernel policy ID.\n");
					return (NECP_KERNEL_POLICY_ID_NONE);
				}
				necp_last_kernel_ip_policy_id = NECP_KERNEL_POLICY_ID_FIRST_VALID_IP;
				wrapped = TRUE;
			}
			newid = necp_last_kernel_ip_policy_id;
		} while (FUNC2(newid) != NULL); // If already used, keep trying
	}

	if (newid == NECP_KERNEL_POLICY_ID_NONE) {
		FUNC1(LOG_ERR, "Allocate kernel policy id failed.\n");
		return (NECP_KERNEL_POLICY_ID_NONE);
	}

	return (newid);
}