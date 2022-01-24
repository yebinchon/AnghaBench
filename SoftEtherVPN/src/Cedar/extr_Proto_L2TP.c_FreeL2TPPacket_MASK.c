#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* Data; int /*<<< orphan*/ * AvpList; } ;
typedef  TYPE_1__ L2TP_PACKET ;
typedef  int /*<<< orphan*/  L2TP_AVP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(L2TP_PACKET *p)
{
	UINT i;
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	if (p->AvpList != NULL)
	{
		for (i = 0;i < FUNC3(p->AvpList);i++)
		{
			L2TP_AVP *a = FUNC2(p->AvpList, i);

			FUNC1(a);
		}

		FUNC4(p->AvpList);
	}

	if (p->Data != NULL)
	{
		FUNC0(p->Data);
	}

	FUNC0(p);
}