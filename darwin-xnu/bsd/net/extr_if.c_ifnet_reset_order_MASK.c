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
typedef  size_t uint32_t ;
typedef  size_t u_int32_t ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFSCOPE_NONE ; 
 struct ifnet* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ if_index ; 
 scalar_t__ if_ordered_count ; 
 int /*<<< orphan*/  if_ordered_link ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  ifnet_ordered_head ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(u_int32_t *ordered_indices, u_int32_t count)
{
	struct ifnet *ifp = NULL;
	int error = 0;

	FUNC4();
	for (u_int32_t order_index = 0; order_index < count; order_index++) {
		if (ordered_indices[order_index] == IFSCOPE_NONE ||
		    ordered_indices[order_index] > (uint32_t)if_index) {
			error = EINVAL;
			FUNC3();
			return (error);
		}
	}
	// Flush current ordered list
	for (ifp = FUNC0(&ifnet_ordered_head); ifp != NULL;
	    ifp = FUNC0(&ifnet_ordered_head)) {
		FUNC6(ifp);
		FUNC7(ifp);
		FUNC5(ifp);
	}

	FUNC2(if_ordered_count == 0);

	for (u_int32_t order_index = 0; order_index < count; order_index++) {
		u_int32_t interface_index = ordered_indices[order_index];
		ifp = ifindex2ifnet[interface_index];
		if (ifp == NULL) {
			continue;
		}
		FUNC6(ifp);
		FUNC1(&ifnet_ordered_head, ifp, if_ordered_link);
		FUNC5(ifp);
		if_ordered_count++;
	}

	FUNC3();

	FUNC8();

	return (error);
}