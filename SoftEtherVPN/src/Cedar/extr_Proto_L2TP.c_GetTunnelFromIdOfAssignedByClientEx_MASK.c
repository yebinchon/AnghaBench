#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  TunnelList; } ;
struct TYPE_6__ {scalar_t__ TunnelId1; int /*<<< orphan*/  IsV3; int /*<<< orphan*/  ClientIp; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  TYPE_2__ L2TP_SERVER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

L2TP_TUNNEL *FUNC4(L2TP_SERVER *l2tp, IP *client_ip, UINT tunnel_id, bool is_v3)
{
	UINT i;
	// Validate arguments
	if (l2tp == NULL || client_ip == 0 || tunnel_id == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC3(l2tp->TunnelList);i++)
	{
		L2TP_TUNNEL *t = FUNC2(l2tp->TunnelList, i);

		if (t->TunnelId1 == tunnel_id && FUNC0(&t->ClientIp, client_ip) == 0)
		{
			if (FUNC1(t->IsV3, is_v3))
			{
				return t;
			}
		}
	}

	return NULL;
}