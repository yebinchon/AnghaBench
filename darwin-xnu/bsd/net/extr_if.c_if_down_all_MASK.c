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
typedef  size_t u_int32_t ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNET_FAMILY_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct ifnet***,size_t*) ; 

int
FUNC4(void)
{
	struct ifnet **ifp;
	u_int32_t	count;
	u_int32_t	i;

	if (FUNC3(IFNET_FAMILY_ANY, &ifp, &count) == 0) {
		for (i = 0; i < count; i++) {
			FUNC1(ifp[i]);
			FUNC0(ifp[i]);
		}
		FUNC2(ifp);
	}

	return (0);
}