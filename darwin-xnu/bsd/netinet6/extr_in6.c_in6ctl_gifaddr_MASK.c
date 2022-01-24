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
typedef  int u_long ;
struct sockaddr_in6 {int dummy; } ;
struct in6_ifreq {struct sockaddr_in6 ifr_dstaddr; struct sockaddr_in6 ifr_addr; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; struct sockaddr_in6 ia_dstaddr; struct sockaddr_in6 ia_addr; } ;
struct ifnet {int if_flags; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IFF_POINTOPOINT ; 
#define  SIOCGIFADDR_IN6 129 
#define  SIOCGIFDSTADDR_IN6 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in6*,struct sockaddr_in6*,int) ; 
 int FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC5(struct ifnet *ifp, struct in6_ifaddr *ia, u_long cmd,
    struct in6_ifreq *ifr)
{
	struct sockaddr_in6 addr;
	int error = 0;

	FUNC2(ifp != NULL);

	if (ia == NULL)
		return (EADDRNOTAVAIL);

	switch (cmd) {
	case SIOCGIFADDR_IN6:		/* struct in6_ifreq */
		FUNC0(&ia->ia_ifa);
		FUNC3(&ia->ia_addr, &addr, sizeof (addr));
		FUNC1(&ia->ia_ifa);
		if ((error = FUNC4(&addr, TRUE)) != 0)
			break;
		FUNC3(&addr, &ifr->ifr_addr, sizeof (addr));
		break;

	case SIOCGIFDSTADDR_IN6:	/* struct in6_ifreq */
		if (!(ifp->if_flags & IFF_POINTOPOINT)) {
			error = EINVAL;
			break;
		}
		/*
		 * XXX: should we check if ifa_dstaddr is NULL and return
		 * an error?
		 */
		FUNC0(&ia->ia_ifa);
		FUNC3(&ia->ia_dstaddr, &addr, sizeof (addr));
		FUNC1(&ia->ia_ifa);
		if ((error = FUNC4(&addr, TRUE)) != 0)
			break;
		FUNC3(&addr, &ifr->ifr_dstaddr, sizeof (addr));
		break;

	default:
		FUNC2(0);
		/* NOTREACHED */
	}

	return (error);
}