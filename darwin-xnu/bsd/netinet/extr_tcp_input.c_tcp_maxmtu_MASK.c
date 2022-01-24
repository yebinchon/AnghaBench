#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rmx_mtu; } ;
struct rtentry {TYPE_1__ rt_rmx; TYPE_3__* rt_ifp; } ;
struct TYPE_7__ {int if_mtu; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ CLAT46_HDR_EXPANSION_OVERHD ; 
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 unsigned int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 TYPE_2__* FUNC4 (struct rtentry*) ; 

__attribute__((used)) static inline unsigned int
FUNC5(struct rtentry *rt)
{
	unsigned int maxmtu;
	int interface_mtu = 0;

	FUNC3(rt);
	interface_mtu = rt->rt_ifp->if_mtu;

	if (FUNC4(rt)->sa_family == AF_INET &&
	    FUNC1(rt->rt_ifp)) {
		interface_mtu = FUNC0(rt->rt_ifp);
		/* Further adjust the size for CLAT46 expansion */
		interface_mtu -= CLAT46_HDR_EXPANSION_OVERHD;
	}

	if (rt->rt_rmx.rmx_mtu == 0)
		maxmtu = interface_mtu;
	else
		maxmtu = FUNC2(rt->rt_rmx.rmx_mtu, interface_mtu);

	return (maxmtu);
}