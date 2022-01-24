#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {TYPE_1__* NatTableForRecv; } ;
struct TYPE_8__ {scalar_t__ SrcIp; scalar_t__ Protocol; scalar_t__ LastCommTime; } ;
struct TYPE_7__ {int /*<<< orphan*/  AllList; } ;
typedef  TYPE_2__ NATIVE_NAT_ENTRY ;
typedef  TYPE_3__ NATIVE_NAT ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

NATIVE_NAT_ENTRY *FUNC2(NATIVE_NAT *t, UINT ip, UINT protocol)
{
	UINT i;
	NATIVE_NAT_ENTRY *oldest = NULL;
	UINT64 oldest_tick = 0xFFFFFFFFFFFFFFFFULL;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(t->NatTableForRecv->AllList);i++)
	{
		NATIVE_NAT_ENTRY *e = FUNC0(t->NatTableForRecv->AllList, i);

		if (e->SrcIp == ip)
		{
			if (e->Protocol == protocol)
			{
				if (e->LastCommTime <= oldest_tick)
				{
					oldest_tick = e->LastCommTime;
					oldest = e;
				}
			}
		}
	}

	return oldest;
}