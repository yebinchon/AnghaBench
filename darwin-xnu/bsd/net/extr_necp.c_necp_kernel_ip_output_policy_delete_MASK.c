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
struct necp_kernel_ip_output_policy {int /*<<< orphan*/ * cond_bound_interface; } ;
typedef  int /*<<< orphan*/  necp_kernel_policy_id ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct necp_kernel_ip_output_policy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (struct necp_kernel_ip_output_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NECP_IP_POLICY ; 
 int TRUE ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct necp_kernel_ip_output_policy* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  necp_kernel_policy_lock ; 

__attribute__((used)) static bool
FUNC5(necp_kernel_policy_id policy_id)
{
	struct necp_kernel_ip_output_policy *policy = NULL;

	FUNC1(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

	policy = FUNC4(policy_id);
	if (policy) {
		FUNC2(policy, chain);

		if (policy->cond_bound_interface) {
			FUNC3(policy->cond_bound_interface);
			policy->cond_bound_interface = NULL;
		}

		FUNC0(policy, sizeof(*policy), M_NECP_IP_POLICY);
		return (TRUE);
	}

	return (FALSE);
}