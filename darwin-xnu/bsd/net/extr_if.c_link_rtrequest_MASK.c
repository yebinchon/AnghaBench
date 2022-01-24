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
struct sockaddr {int dummy; } ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifnet {int dummy; } ;
struct ifaddr {void (* ifa_rtrequest ) (int,struct rtentry*,struct sockaddr*) ;struct ifnet* ifa_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTM_ADD ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 struct ifaddr* FUNC6 (struct sockaddr*,struct ifnet*) ; 
 int /*<<< orphan*/  rnh_lock ; 
 struct sockaddr* FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*,struct ifaddr*) ; 

void
FUNC9(int cmd, struct rtentry *rt, struct sockaddr *sa)
{
	struct ifaddr *ifa;
	struct sockaddr *dst;
	struct ifnet *ifp;
	void (*ifa_rtrequest)(int, struct rtentry *, struct sockaddr *);

	FUNC3(rnh_lock, LCK_MTX_ASSERT_OWNED);
	FUNC5(rt);

	if (cmd != RTM_ADD || ((ifa = rt->rt_ifa) == 0) ||
	    ((ifp = ifa->ifa_ifp) == 0) || ((dst = FUNC7(rt)) == 0))
		return;

	/* Become a regular mutex, just in case */
	FUNC4(rt);

	ifa = FUNC6(dst, ifp);
	if (ifa) {
		FUNC8(rt, ifa);
		FUNC0(ifa);
		ifa_rtrequest = ifa->ifa_rtrequest;
		FUNC2(ifa);
		if (ifa_rtrequest != NULL && ifa_rtrequest != link_rtrequest)
			ifa_rtrequest(cmd, rt, sa);
		FUNC1(ifa);
	}
}