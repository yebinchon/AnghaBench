#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {TYPE_1__* Option; } ;
struct TYPE_4__ {scalar_t__ ManageOnlyLocalUnicastIPv6; scalar_t__ ManageOnlyPrivateIP; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int IPV6_ADDR_LOCAL_UNICAST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(IP *ip, HUB *hub)
{
	// Validate arguments
	if (ip == NULL || hub == NULL)
	{
		return false;
	}

	if (hub->Option == NULL)
	{
		return true;
	}

	if (FUNC1(ip))
	{
		if (hub->Option->ManageOnlyPrivateIP)
		{
			if (FUNC2(ip) == false)
			{
				return false;
			}
		}
	}
	else
	{
		if (hub->Option->ManageOnlyLocalUnicastIPv6)
		{
			UINT ip_type = FUNC0(ip);

			if (!(ip_type & IPV6_ADDR_LOCAL_UNICAST))
			{
				return false;
			}
		}
	}

	return true;
}