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
typedef  int u_long ;
struct TYPE_3__ {int /*<<< orphan*/  ifru_icmp6stat; int /*<<< orphan*/  ifru_stat; } ;
struct in6_ifreq {TYPE_1__ ifr_ifru; } ;
struct ifnet {int if_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  icmp6_ifstat; int /*<<< orphan*/  in6_ifstat; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ifnet*) ; 
#define  SIOCGIFSTAT_ICMP6 129 
#define  SIOCGIFSTAT_IN6 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC4(struct ifnet *ifp, u_long cmd, struct in6_ifreq *ifr)
{
	int error = 0, index;

	FUNC1(ifp != NULL);
	index = ifp->if_index;

	switch (cmd) {
	case SIOCGIFSTAT_IN6:		/* struct in6_ifreq */
		/* N.B.: if_inet6data is never freed once set. */
		if (FUNC0(ifp) == NULL) {
			/* return (EAFNOSUPPORT)? */
			FUNC3(&ifr->ifr_ifru.ifru_stat,
			    sizeof (ifr->ifr_ifru.ifru_stat));
		} else {
			FUNC2(&FUNC0(ifp)->in6_ifstat,
			    &ifr->ifr_ifru.ifru_stat,
			    sizeof (ifr->ifr_ifru.ifru_stat));
		}
		break;

	case SIOCGIFSTAT_ICMP6:		/* struct in6_ifreq */
		/* N.B.: if_inet6data is never freed once set. */
		if (FUNC0(ifp) == NULL) {
			/* return (EAFNOSUPPORT)? */
			FUNC3(&ifr->ifr_ifru.ifru_icmp6stat,
			    sizeof (ifr->ifr_ifru.ifru_icmp6stat));
		} else {
			FUNC2(&FUNC0(ifp)->icmp6_ifstat,
			    &ifr->ifr_ifru.ifru_icmp6stat,
			    sizeof (ifr->ifr_ifru.ifru_icmp6stat));
		}
		break;

	default:
		FUNC1(0);
		/* NOTREACHED */
	}

	return (error);
}