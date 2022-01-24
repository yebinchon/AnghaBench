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
struct TYPE_8__ {scalar_t__ Now; int /*<<< orphan*/ * ArpTable; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Expire; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ ARP_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(VH *v)
{
	UINT i;
	LIST *o;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	o = FUNC5(NULL);
	for (i = 0;i < FUNC4(v->ArpTable);i++)
	{
		ARP_ENTRY *e = FUNC3(v->ArpTable, i);

		// Check for expired
		if (e->Expire < v->Now)
		{
			// Expired
			FUNC0(o, e);
		}
	}

	// Remove expired entries at once
	for (i = 0;i < FUNC4(o);i++)
	{
		ARP_ENTRY *e = FUNC3(o, i);

		FUNC1(v->ArpTable, e);
		FUNC2(e);
	}

	FUNC6(o);
}