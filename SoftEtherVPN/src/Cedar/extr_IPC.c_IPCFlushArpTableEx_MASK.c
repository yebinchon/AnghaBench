#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/ * ArpTable; } ;
struct TYPE_8__ {int Resolved; scalar_t__ ExpireTime; scalar_t__ GiveupTime; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IPC_ARP ;
typedef  TYPE_2__ IPC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(IPC *ipc, UINT64 now)
{
	UINT i;
	LIST *o = NULL;
	// Validate arguments
	if (ipc == NULL)
	{
		return;
	}
	if (now == 0)
	{
		now = FUNC7();
	}

	for (i = 0;i < FUNC4(ipc->ArpTable);i++)
	{
		IPC_ARP *a = FUNC3(ipc->ArpTable, i);
		bool b = false;

		if (a->Resolved && a->ExpireTime <= now)
		{
			b = true;
		}
		else if (a->Resolved == false && a->GiveupTime <= now)
		{
			b = true;
		}

		if (b)
		{
			if (o == NULL)
			{
				o = FUNC5(NULL);
			}

			FUNC0(o, a);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC4(o);i++)
		{
			IPC_ARP *a = FUNC3(o, i);

			FUNC2(a);

			FUNC1(ipc->ArpTable, a);
		}

		FUNC6(o);
	}
}