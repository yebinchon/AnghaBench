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
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  necp_kernel_policy_lock ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ifnet*,scalar_t__,int /*<<< orphan*/ *) ; 

bool
FUNC4(struct mbuf *packet, struct ifnet *interface)
{
	bool is_allowed = TRUE;
	u_int32_t route_rule_id = FUNC2(packet);
	if (route_rule_id != 0 &&
		interface != NULL) {
		FUNC1(&necp_kernel_policy_lock);
		is_allowed = FUNC3(NULL, interface, FUNC2(packet), NULL);
		FUNC0(&necp_kernel_policy_lock);
	}
	return (is_allowed);
}