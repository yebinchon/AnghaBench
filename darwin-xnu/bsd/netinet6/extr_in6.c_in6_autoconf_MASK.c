#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int ia6_flags; struct in6_ifaddr* ia_next; TYPE_1__ ia_ifa; } ;
struct ifnet {int if_flags; int if_eflags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int IFEF_ACCEPT_RTADV ; 
 int IFEF_IPV6_ROUTER ; 
 int IFF_LOOPBACK ; 
 int IN6_IFF_AUTOCONF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC10(struct ifnet *ifp, int enable)
{
	int error = 0;

	FUNC4(ifp != NULL);

	if (ifp->if_flags & IFF_LOOPBACK)
		return (EINVAL);

	if (enable) {
		/*
		 * An interface in IPv6 router mode implies that it
		 * is either configured with a static IP address or
		 * autoconfigured via a locally-generated RA.  Prevent
		 * SIOCAUTOCONF_START from being set in that mode.
		 */
		FUNC6(ifp);
		if (ifp->if_eflags & IFEF_IPV6_ROUTER) {
			ifp->if_eflags &= ~IFEF_ACCEPT_RTADV;
			error = EBUSY;
		} else {
			ifp->if_eflags |= IFEF_ACCEPT_RTADV;
		}
		FUNC5(ifp);
	} else {
		struct in6_ifaddr *ia = NULL;

		FUNC6(ifp);
		ifp->if_eflags &= ~IFEF_ACCEPT_RTADV;
		FUNC5(ifp);

		/* Remove autoconfigured address from interface */
		FUNC9(&in6_ifaddr_rwlock);
		ia = in6_ifaddrs;
		while (ia != NULL) {
			if (ia->ia_ifa.ifa_ifp != ifp) {
				ia = ia->ia_next;
				continue;
			}
			FUNC1(&ia->ia_ifa);
			if (ia->ia6_flags & IN6_IFF_AUTOCONF) {
				FUNC0(&ia->ia_ifa);	/* for us */
				FUNC3(&ia->ia_ifa);
				FUNC8(&in6_ifaddr_rwlock);
				FUNC7(&ia->ia_ifa);
				FUNC2(&ia->ia_ifa);	/* for us */
				FUNC9(&in6_ifaddr_rwlock);
				/*
				 * Purging the address caused in6_ifaddr_rwlock
				 * to be dropped and reacquired;
				 * therefore search again from the beginning
				 * of in6_ifaddrs list.
				 */
				ia = in6_ifaddrs;
				continue;
			}
			FUNC3(&ia->ia_ifa);
			ia = ia->ia_next;
		}
		FUNC8(&in6_ifaddr_rwlock);
	}
	return (error);
}