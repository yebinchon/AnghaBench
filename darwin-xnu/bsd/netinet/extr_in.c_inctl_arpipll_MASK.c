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
struct ifreq {int /*<<< orphan*/  ifr_intval; } ;
struct ifnet {int if_eflags; } ;
typedef  int /*<<< orphan*/  intval ;

/* Variables and functions */
 int EBUSY ; 
 int IFEF_ARPLL ; 
 int IFEF_IPV4_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int ipv4_ll_arp_aware ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC4(struct ifnet *ifp, struct ifreq *ifr)
{
	int error = 0, intval;

	FUNC0(ifp != NULL);

	FUNC1(&ifr->ifr_intval, &intval, sizeof (intval));
	ipv4_ll_arp_aware = 1;

	FUNC3(ifp);
	if (intval) {
		/*
		 * An interface in IPv4 router mode implies that it
		 * is configured with a static IP address and should
		 * not have to deal with IPv4 Link-Local Address;
		 * prevent SIOCARPIPLL from being set in that mode.
		 */
		if (ifp->if_eflags & IFEF_IPV4_ROUTER) {
			intval = 0;	/* be safe; clear flag if set */
			error = EBUSY;
		} else {
			ifp->if_eflags |= IFEF_ARPLL;
		}
	}
	if (!intval)
		ifp->if_eflags &= ~IFEF_ARPLL;
	FUNC2(ifp);

	return (error);
}