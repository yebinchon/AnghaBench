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
typedef  int /*<<< orphan*/  uint8_t ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; TYPE_1__ ia_addr; } ;
struct ifnet {int if_flags; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct dadq {int /*<<< orphan*/ * dad_nonce; int /*<<< orphan*/  dad_ns_ocount; int /*<<< orphan*/  dad_ns_tcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int IFF_POINTOPOINT ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int ND_OPT_NONCE_LEN32 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ dad_enhanced ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct dadq *dp, struct ifaddr *ifa)
{
	struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
	struct ifnet *ifp = ifa->ifa_ifp;
	int i = 0;
	struct in6_addr taddr6;

	FUNC0(dp);
	dp->dad_ns_tcount++;
	if ((ifp->if_flags & IFF_UP) == 0) {
		FUNC1(dp);
		return;
	}
	if ((ifp->if_flags & IFF_RUNNING) == 0) {
		FUNC1(dp);
		return;
	}

	dp->dad_ns_ocount++;
	FUNC1(dp);
	FUNC2(&ia->ia_ifa);
	taddr6 = ia->ia_addr.sin6_addr;
	FUNC3(&ia->ia_ifa);
	if (dad_enhanced != 0 && !(ifp->if_flags & IFF_POINTOPOINT)) {
		for (i = 0; i < ND_OPT_NONCE_LEN32; i++)
			dp->dad_nonce[i] = FUNC4();
		/*
		 * XXXHRS: Note that in the case that
		 * DupAddrDetectTransmits > 1, multiple NS messages with
		 * different nonces can be looped back in an unexpected
		 * order.  The current implementation recognizes only
		 * the latest nonce on the sender side.  Practically it
		 * should work well in almost all cases.
		 */
	}
	FUNC5(ifp, NULL, &taddr6, NULL,
	    (uint8_t *)&dp->dad_nonce[0]);
}