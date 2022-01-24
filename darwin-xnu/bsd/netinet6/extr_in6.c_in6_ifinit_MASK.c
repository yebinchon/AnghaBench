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
struct TYPE_2__ {scalar_t__ sin6_family; } ;
struct ifaddr {int dummy; } ;
struct in6_ifaddr {int ia_flags; int ia_plen; TYPE_1__ ia_dstaddr; struct ifaddr ia_ifa; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int IFA_ROUTE ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int IN6_IFAUPDATE_1STADDR ; 
 int IN6_IFAUPDATE_NEWADDR ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int RTF_CLONING ; 
 int RTF_HOST ; 
 int RTF_UP ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  SIOCSIFADDR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct ifaddr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, struct in6_ifaddr *ia, int ifaupflags)
{
	int error;
	struct ifaddr *ifa;

	error = 0;
	ifa = &ia->ia_ifa;

	/*
	 * NOTE: SIOCSIFADDR is defined with struct ifreq as parameter,
	 * but here we are sending it down to the interface with a pointer
	 * to struct ifaddr, for legacy reasons.
	 */
	if ((ifaupflags & IN6_IFAUPDATE_1STADDR) != 0) {
		error = FUNC4(ifp, PF_INET6, SIOCSIFADDR, ia);
		if (error != 0) {
			if (error != EOPNOTSUPP)
				return (error);
			error = 0;
		}
	}

	FUNC0(ifa);

	/*
	 * Special case:
	 * If the destination address is specified for a point-to-point
	 * interface, install a route to the destination as an interface
	 * direct route.
	 */
	if (!(ia->ia_flags & IFA_ROUTE) && ia->ia_plen == 128 &&
	    ia->ia_dstaddr.sin6_family == AF_INET6) {
		FUNC2(ifa);
		error = FUNC7(ifa, RTM_ADD, RTF_UP | RTF_HOST);
		if (error != 0)
			return (error);
		FUNC0(ifa);
		ia->ia_flags |= IFA_ROUTE;
	}
	FUNC1(ifa);
	if (ia->ia_plen < 128) {
		/*
		 * The RTF_CLONING flag is necessary for in6_is_ifloop_auto().
		 */
		ia->ia_flags |= RTF_CLONING;
	}

	FUNC2(ifa);

	/* Add ownaddr as loopback rtentry, if necessary (ex. on p2p link). */
	if ((ifaupflags & IN6_IFAUPDATE_NEWADDR) != 0)
		FUNC5(ifa);

	/* invalidate route caches */
	FUNC6();

	FUNC3(error == 0);
	return (0);
}