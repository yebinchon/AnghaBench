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
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Expire; } ;
struct TYPE_8__ {scalar_t__ LastDeleteOldArpTable; int /*<<< orphan*/ * ArpTable; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ L3IF ;
typedef  TYPE_2__ L3ARPENTRY ;

/* Variables and functions */
 scalar_t__ ARP_ENTRY_POLLING_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(L3IF *f)
{
	UINT i;
	LIST *o = NULL;
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	if ((f->LastDeleteOldArpTable + ARP_ENTRY_POLLING_TIME) > FUNC7())
	{
		return;
	}
	f->LastDeleteOldArpTable = FUNC7();

	for (i = 0;i < FUNC4(f->ArpTable);i++)
	{
		L3ARPENTRY *a = FUNC3(f->ArpTable, i);

		if (a->Expire <= FUNC7())
		{
			// Expired
			if (o == NULL)
			{
				o = FUNC5(NULL);
			}

			FUNC2(o, a);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC4(o);i++)
		{
			L3ARPENTRY *a = FUNC3(o, i);

			FUNC0(f->ArpTable, a);
			FUNC1(a);
		}

		FUNC6(o);
	}
}