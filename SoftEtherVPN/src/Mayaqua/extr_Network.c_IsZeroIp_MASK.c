#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ipv6_addr; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

bool FUNC2(IP *ip)
{
	// Validate arguments
	if (ip == NULL)
	{
		return true;
	}

	if (FUNC0(ip) == false)
	{
		return FUNC1(ip->addr, sizeof(ip->addr));
	}
	else
	{
		return FUNC1(ip->ipv6_addr, sizeof(ip->ipv6_addr));
	}
}