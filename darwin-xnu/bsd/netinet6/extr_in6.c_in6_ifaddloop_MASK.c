#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int rt_flags; TYPE_1__* rt_ifp; } ;
struct ifaddr {int /*<<< orphan*/  ifa_addr; } ;
struct TYPE_2__ {int if_flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int RTF_HOST ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ifaddr*) ; 
 struct rtentry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ifaddr *ifa)
{
	struct rtentry *rt;

	/*
	 * If there is no loopback entry, allocate one.  ifa_addr for
	 * INET6 is set once during init; no need to hold lock.
	 */
	rt = FUNC4(ifa->ifa_addr, 0, 0);
	if (rt != NULL)
		FUNC0(rt);
	if (rt == NULL || (rt->rt_flags & RTF_HOST) == 0 ||
	    (rt->rt_ifp->if_flags & IFF_LOOPBACK) == 0) {
		if (rt != NULL) {
			FUNC1(rt);
			FUNC2(rt);
		}
		FUNC3(RTM_ADD, ifa);
	} else if (rt != NULL) {
		FUNC1(rt);
		FUNC2(rt);
	}
}