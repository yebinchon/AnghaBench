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
struct TYPE_8__ {scalar_t__ Now; int /*<<< orphan*/ * IpWaitTable; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Expire; struct TYPE_9__* Data; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ IP_WAIT ;

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
	LIST *o = NULL;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Get the deleting list
	for (i = 0;i < FUNC4(v->IpWaitTable);i++)
	{
		IP_WAIT *w = FUNC3(v->IpWaitTable, i);

		if (w->Expire < v->Now)
		{
			if (o == NULL)
			{
				o = FUNC5(NULL);
			}
			FUNC0(o, w);
		}
	}

	// Delete all at once
	if (o != NULL)
	{
		for (i = 0;i < FUNC4(o);i++)
		{
			IP_WAIT *w = FUNC3(o, i);

			// Remove from the list
			FUNC1(v->IpWaitTable, w);

			// Release the memory
			FUNC2(w->Data);
			FUNC2(w);
		}
		FUNC6(o);
	}
}