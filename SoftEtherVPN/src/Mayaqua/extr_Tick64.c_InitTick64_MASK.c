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
struct TYPE_3__ {int /*<<< orphan*/  Thread; int /*<<< orphan*/  AdjustTime; int /*<<< orphan*/  TickLock; } ;
typedef  int /*<<< orphan*/  TICK64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Tick64Thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  halt_tick_event ; 
 TYPE_1__* tk64 ; 

void FUNC6()
{
	if (tk64 != NULL)
	{
		// Already initialized
		return;
	}

	halt_tick_event = FUNC0();

	// Initialize the structure
	tk64 = FUNC5(sizeof(TICK64));
	tk64->TickLock = FUNC2();
	tk64->AdjustTime = FUNC1(NULL);

	// Creating a thread
	tk64->Thread = FUNC3(Tick64Thread, NULL);
	FUNC4(tk64->Thread);
}