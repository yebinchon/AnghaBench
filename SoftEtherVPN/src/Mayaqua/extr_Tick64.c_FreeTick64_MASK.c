#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int Halt; int /*<<< orphan*/  TickLock; int /*<<< orphan*/  AdjustTime; int /*<<< orphan*/  Thread; } ;
typedef  TYPE_1__ ADJUST_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * halt_tick_event ; 
 TYPE_1__* tk64 ; 

void FUNC9()
{
	UINT i;
	if (tk64 == NULL)
	{
		// Uninitialized
		return;
	}

	// Termination process
	tk64->Halt = true;
	FUNC7(halt_tick_event);
	FUNC8(tk64->Thread, INFINITE);
	FUNC6(tk64->Thread);

	// Releasing process
	for (i = 0;i < FUNC3(tk64->AdjustTime);i++)
	{
		ADJUST_TIME *t = FUNC2(tk64->AdjustTime, i);
		FUNC1(t);
	}
	FUNC5(tk64->AdjustTime);
	FUNC0(tk64->TickLock);
	FUNC1(tk64);
	tk64 = NULL;

	FUNC4(halt_tick_event);
	halt_tick_event = NULL;
}