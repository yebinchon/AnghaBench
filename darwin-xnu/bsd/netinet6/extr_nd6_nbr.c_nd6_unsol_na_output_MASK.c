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
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; TYPE_1__ ia_addr; } ;
struct ifnet {int if_flags; int if_eflags; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IFEF_IPV6_ND6ALT ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  ND_NA_FLAG_OVERRIDE ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct in6_addr*,struct ifnet*,int /*<<< orphan*/ *) ; 
 struct in6_addr in6addr_linklocal_allnodes ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,struct in6_addr*,struct in6_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ifaddr *ifa)
{
	struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
	struct ifnet *ifp = ifa->ifa_ifp;
	struct in6_addr saddr6, taddr6;

	if ((ifp->if_flags & IFF_UP) == 0 ||
	    (ifp->if_flags & IFF_RUNNING) == 0 ||
	    (ifp->if_eflags & IFEF_IPV6_ND6ALT) != 0)
		return;

	FUNC0(&ia->ia_ifa);
	taddr6 = ia->ia_addr.sin6_addr;
	FUNC1(&ia->ia_ifa);
	if (FUNC3(&taddr6, ifp, NULL) != 0)
		return;
	saddr6 = in6addr_linklocal_allnodes;
	if (FUNC3(&saddr6, ifp, NULL) != 0)
		return;

	FUNC5((LOG_INFO, "%s: sending unsolicited NA\n",
	    FUNC2(ifa->ifa_ifp)));

	FUNC4(ifp, &saddr6, &taddr6, ND_NA_FLAG_OVERRIDE, 1, NULL);
}