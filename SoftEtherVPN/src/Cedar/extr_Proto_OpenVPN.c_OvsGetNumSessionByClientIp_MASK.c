#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  SessionList; } ;
struct TYPE_5__ {int /*<<< orphan*/  ClientIp; } ;
typedef  TYPE_1__ OPENVPN_SESSION ;
typedef  TYPE_2__ OPENVPN_SERVER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

UINT FUNC3(OPENVPN_SERVER *s, IP *ip)
{
	UINT i;
	UINT ret = 0;
	// Validate arguments
	if (s == NULL || ip == NULL)
	{
		return 0;
	}

	for (i = 0;i < FUNC2(s->SessionList);i++)
	{
		OPENVPN_SESSION *se = FUNC1(s->SessionList, i);

		if (FUNC0(&se->ClientIp, ip) == 0)
		{
			ret++;
		}
	}

	return ret;
}