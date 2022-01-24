#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int* ipv6_addr; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  IPV6_ADDR_ALL_NODE_MULTICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_ALL_ROUTER_MULTICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_GLOBAL_UNICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_LOCAL_UNICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_LOOPBACK ; 
 int /*<<< orphan*/  IPV6_ADDR_MULTICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_SOLICIATION_MULTICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_UNICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_ZERO ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int**,int) ; 

UINT FUNC6(IP *ip)
{
	UINT ret = 0;
	// Validate arguments
	if (FUNC4(ip) == false)
	{
		return 0;
	}

	if (ip->ipv6_addr[0] == 0xff)
	{
		IP all_node, all_router;

		FUNC1(&all_node);

		FUNC2(&all_router);

		ret |= IPV6_ADDR_MULTICAST;

		if (FUNC0(ip->ipv6_addr, all_node.ipv6_addr, 16) == 0)
		{
			ret |= IPV6_ADDR_ALL_NODE_MULTICAST;
		}
		else if (FUNC0(ip->ipv6_addr, all_router.ipv6_addr, 16) == 0)
		{
			ret |= IPV6_ADDR_ALL_ROUTER_MULTICAST;
		}
		else
		{
			if (ip->ipv6_addr[1] == 0x02 && ip->ipv6_addr[2] == 0 && ip->ipv6_addr[3] == 0 &&
				ip->ipv6_addr[4] == 0 && ip->ipv6_addr[5] == 0 && ip->ipv6_addr[6] == 0 &&
				ip->ipv6_addr[7] == 0 && ip->ipv6_addr[8] == 0 && ip->ipv6_addr[9] == 0 &&
				ip->ipv6_addr[10] == 0 && ip->ipv6_addr[11] == 0x01 && ip->ipv6_addr[12] == 0xff)
			{
				ret |= IPV6_ADDR_SOLICIATION_MULTICAST;
			}
		}
	}
	else
	{
		ret |= IPV6_ADDR_UNICAST;

		if (ip->ipv6_addr[0] == 0xfe && (ip->ipv6_addr[1] & 0xc0) == 0x80)
		{
			ret |= IPV6_ADDR_LOCAL_UNICAST;
		}
		else
		{
			ret |= IPV6_ADDR_GLOBAL_UNICAST;

			if (FUNC5(&ip->ipv6_addr, 16))
			{
				ret |= IPV6_ADDR_ZERO;
			}
			else
			{
				IP loopback;

				FUNC3(&loopback);

				if (FUNC0(ip->ipv6_addr, loopback.ipv6_addr, 16) == 0)
				{
					ret |= IPV6_ADDR_LOOPBACK;
				}
			}
		}
	}

	return ret;
}