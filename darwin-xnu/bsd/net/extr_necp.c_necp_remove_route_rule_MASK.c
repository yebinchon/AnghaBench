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
typedef  int /*<<< orphan*/  u_int32_t ;
struct necp_route_rule_list {int dummy; } ;
struct necp_route_rule {scalar_t__ refcount; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct necp_route_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (struct necp_route_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NECP ; 
 int TRUE ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  necp_kernel_policy_lock ; 
 struct necp_route_rule* FUNC3 (struct necp_route_rule_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct necp_route_rule_list *list, u_int32_t route_rule_id)
{
	struct necp_route_rule *existing_rule = NULL;

	FUNC1(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

	existing_rule = FUNC3(list, route_rule_id);
	if (existing_rule != NULL) {
		if (--existing_rule->refcount == 0) {
			FUNC4(existing_rule->id);
			FUNC2(existing_rule, chain);
			FUNC0(existing_rule, M_NECP);
		}
		return (TRUE);
	}

	return (FALSE);
}