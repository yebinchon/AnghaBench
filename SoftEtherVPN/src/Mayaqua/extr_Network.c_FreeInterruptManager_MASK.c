#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  TickList; } ;
typedef  TYPE_1__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  TYPE_1__ INTERRUPT_MANAGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(INTERRUPT_MANAGER *m)
{
	UINT i;
	// Validate arguments
	if (m == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(m->TickList);i++)
	{
		UINT64 *v = FUNC1(m->TickList, i);

		FUNC0(v);
	}

	FUNC3(m->TickList);

	FUNC0(m);
}