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
struct TYPE_6__ {int /*<<< orphan*/  IpWaitTable; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {struct TYPE_7__* Data; } ;
typedef  TYPE_2__ IP_WAIT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(VH *v)
{
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(v->IpWaitTable);i++)
	{
		IP_WAIT *w = FUNC1(v->IpWaitTable, i);

		FUNC0(w->Data);
		FUNC0(w);
	}

	FUNC3(v->IpWaitTable);
}