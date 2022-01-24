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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ ipv6_scope_id; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(void *p1, void *p2)
{
	IP *ip1, *ip2;
	UINT r;
	// Validate arguments
	if (p1 == NULL || p2 == NULL)
	{
		return 0;
	}
	ip1 = *(IP **)p1;
	ip2 = *(IP **)p2;
	if (ip1 == NULL || ip2 == NULL)
	{
		return 0;
	}

	// IPv4 < IPv6
	r = FUNC0(FUNC2(ip1), FUNC2(ip2));
	if (r != 0)
	{
		return r;
	}

	// any > specified IP
	if (FUNC4(ip1) && FUNC4(ip2) == false)
	{
		return 1;
	}
	if (FUNC4(ip1) == false && FUNC4(ip2))
	{
		return -1;
	}

	// local > others
	if (FUNC3(ip1) && FUNC3(ip2) == false)
	{
		return 1;
	}
	if (FUNC3(ip1) == false && FUNC3(ip2))
	{
		return -1;
	}

	// ip address
	r = FUNC1(ip1, ip2);
	if (r != 0)
	{
		return r;
	}

	// interface index
	if (FUNC2(ip1))
	{
		r = FUNC0(ip1->ipv6_scope_id, ip2->ipv6_scope_id);
	}
	else
	{
		r = 0;
	}

	return r;
}