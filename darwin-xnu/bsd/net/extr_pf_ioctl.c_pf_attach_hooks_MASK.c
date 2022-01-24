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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/ * ifnet_addrs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC1();
	/*
	 * Check against ifnet_addrs[] before proceeding, in case this
	 * is called very early on, e.g. during dlil_init() before any
	 * network interface is attached.
	 */
	if (ifnet_addrs != NULL) {
		int i;

		for (i = 0; i <= if_index; i++) {
			struct ifnet *ifp = ifindex2ifnet[i];
			if (ifp != NULL) {
				FUNC2(ifp);
			}
		}
	}
	FUNC0();
}