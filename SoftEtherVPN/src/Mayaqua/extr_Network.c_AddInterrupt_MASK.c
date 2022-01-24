#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_3__ {int /*<<< orphan*/  TickList; } ;
typedef  TYPE_1__ INTERRUPT_MANAGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(INTERRUPT_MANAGER *m, UINT64 tick)
{
	// Validate arguments
	if (tick == 0)
	{
		return;
	}

	FUNC2(m->TickList);
	{
		if (FUNC3(m->TickList, &tick) == NULL)
		{
			FUNC1(m->TickList, FUNC0(&tick, sizeof(UINT64)));
		}
	}
	FUNC4(m->TickList);
}