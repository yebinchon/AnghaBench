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
struct rtentry {int rt_flags; TYPE_2__* rt_ifp; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; TYPE_1__ ia_addr; struct in6_ifaddr* ia_next; } ;
struct ifaddr {int /*<<< orphan*/  ifa_addr; } ;
struct TYPE_4__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int RTF_HOST ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rtentry* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct ifaddr *ifa)
{
	struct in6_ifaddr *ia;
	struct rtentry *rt;
	int ia_count = 0;

	/*
	 * Some of BSD variants do not remove cloned routes
	 * from an interface direct route, when removing the direct route
	 * (see comments in net/net_osdep.h).  Even for variants that do remove
	 * cloned routes, they could fail to remove the cloned routes when
	 * we handle multple addresses that share a common prefix.
	 * So, we should remove the route corresponding to the deleted address
	 * regardless of the result of in6_is_ifloop_auto().
	 */

	/*
	 * Delete the entry only if exact one ifa exists.  More than one ifa
	 * can exist if we assign a same single address to multiple
	 * (probably p2p) interfaces.
	 * XXX: we should avoid such a configuration in IPv6...
	 */
	FUNC9(&in6_ifaddr_rwlock);
	for (ia = in6_ifaddrs; ia; ia = ia->ia_next) {
		FUNC1(&ia->ia_ifa);
		if (FUNC3(FUNC0(ifa), &ia->ia_addr.sin6_addr)) {
			ia_count++;
			if (ia_count > 1) {
				FUNC2(&ia->ia_ifa);
				break;
			}
		}
		FUNC2(&ia->ia_ifa);
	}
	FUNC8(&in6_ifaddr_rwlock);

	if (ia_count == 1) {
		/*
		 * Before deleting, check if a corresponding loopbacked host
		 * route surely exists.  With this check, we can avoid to
		 * delete an interface direct route whose destination is same
		 * as the address being removed.  This can happen when removing
		 * a subnet-router anycast address on an interface attahced
		 * to a shared medium.  ifa_addr for INET6 is set once during
		 * init; no need to hold lock.
		 */
		rt = FUNC10(ifa->ifa_addr, 0, 0);
		if (rt != NULL) {
			FUNC4(rt);
			if ((rt->rt_flags & RTF_HOST) != 0 &&
			    (rt->rt_ifp->if_flags & IFF_LOOPBACK) != 0) {
				FUNC5(rt);
				FUNC6(rt);
				FUNC7(RTM_DELETE, ifa);
			} else {
				FUNC6(rt);
			}
		}
	}
}