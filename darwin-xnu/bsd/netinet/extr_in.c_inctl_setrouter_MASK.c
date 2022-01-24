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
struct ifnet {int if_flags; int if_eflags; } ;
typedef  int /*<<< orphan*/  intval ;

/* Variables and functions */
 int ENODEV ; 
 int IFEF_ARPLL ; 
 int IFEF_AUTOCONFIGURING ; 
 int IFEF_IPV4_ROUTER ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC5(struct ifnet *ifp, struct ifreq *ifr)
{
	int error = 0, intval;

	FUNC0(ifp != NULL);

	/* Router mode isn't valid for loopback */
	if (ifp->if_flags & IFF_LOOPBACK)
		return (ENODEV);

	FUNC1(&ifr->ifr_intval, &intval, sizeof (intval));

	FUNC3(ifp);
	if (intval) {
		ifp->if_eflags |= IFEF_IPV4_ROUTER;
		ifp->if_eflags &= ~(IFEF_ARPLL | IFEF_AUTOCONFIGURING);
	} else {
		ifp->if_eflags &= ~IFEF_IPV4_ROUTER;
	}
	FUNC2(ifp);

	/* purge all IPv4 addresses configured on this interface */
	FUNC4(ifp);

	return (error);
}