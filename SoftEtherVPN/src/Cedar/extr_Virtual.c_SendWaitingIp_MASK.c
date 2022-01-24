#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * IpWaitTable; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_11__ {scalar_t__ DestIP; struct TYPE_11__* Data; int /*<<< orphan*/  Size; } ;
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
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC8(VH *v, UCHAR *mac, UINT dest_ip)
{
	UINT i;
	LIST *o = NULL;
	// Validate arguments
	if (v == NULL || mac == NULL)
	{
		return;
	}

	// Get a target list
	for (i = 0;i < FUNC4(v->IpWaitTable);i++)
	{
		IP_WAIT *w = FUNC3(v->IpWaitTable, i);

		if (w->DestIP == dest_ip)
		{
			if (o == NULL)
			{
				o = FUNC5(NULL);
			}
			FUNC0(o, w);
		}
	}

	// Send the target packets at once
	if (o != NULL)
	{
		for (i = 0;i < FUNC4(o);i++)
		{
			IP_WAIT *w = FUNC3(o, i);

			// Transmission processing
			FUNC7(v, mac, w->Data, w->Size);

			// Remove from the list
			FUNC1(v->IpWaitTable, w);

			// Release the memory
			FUNC2(w->Data);
			FUNC2(w);
		}

		FUNC6(o);
	}
}