#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  TunnelList; } ;
struct TYPE_7__ {scalar_t__ SessionId2; int /*<<< orphan*/  IsV3; } ;
struct TYPE_6__ {int /*<<< orphan*/  SessionList; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  TYPE_2__ L2TP_SESSION ;
typedef  TYPE_3__ L2TP_SERVER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

L2TP_SESSION *FUNC3(L2TP_SERVER *l2tp, bool is_v3, UINT id)
{
	UINT i, j;
	// Validate arguments
	if (l2tp == NULL || id == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC2(l2tp->TunnelList);i++)
	{
		L2TP_TUNNEL *t = FUNC1(l2tp->TunnelList, i);

		for (j = 0;j < FUNC2(t->SessionList);j++)
		{
			L2TP_SESSION *s = FUNC1(t->SessionList, j);

			if (s->SessionId2 == id)
			{
				if (FUNC0(s->IsV3, is_v3))
				{
					return s;
				}
			}
		}
	}

	return NULL;
}