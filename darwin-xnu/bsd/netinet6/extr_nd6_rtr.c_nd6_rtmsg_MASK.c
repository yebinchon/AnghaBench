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
struct rtentry {int /*<<< orphan*/  rt_flags; TYPE_2__* rt_ifa; int /*<<< orphan*/  rt_gateway; struct ifnet* rt_ifp; } ;
struct rt_addrinfo {int /*<<< orphan*/ * rti_info; } ;
struct ifnet {TYPE_1__* if_lladdr; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  ifa_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifa_addr; } ;

/* Variables and functions */
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 size_t RTAX_IFA ; 
 size_t RTAX_IFP ; 
 size_t RTAX_NETMASK ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct rt_addrinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int cmd, struct rtentry *rt)
{
	struct rt_addrinfo info;
	struct ifnet *ifp = rt->rt_ifp;

	FUNC0(rt);

	FUNC1((caddr_t)&info, sizeof (info));
	/* It's not necessary to lock ifp for if_lladdr */
	info.rti_info[RTAX_DST] = FUNC2(rt);
	info.rti_info[RTAX_GATEWAY] = rt->rt_gateway;
	info.rti_info[RTAX_NETMASK] = FUNC3(rt);
	/*
	 * ifa_addr pointers for both should always be valid
	 * in this context; no need to hold locks.
	 */
	info.rti_info[RTAX_IFP] = ifp->if_lladdr->ifa_addr;
	info.rti_info[RTAX_IFA] = rt->rt_ifa->ifa_addr;

	FUNC4(cmd, &info, rt->rt_flags, 0);
}