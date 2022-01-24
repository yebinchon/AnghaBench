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
struct TYPE_4__ {int Active; int Halt; int /*<<< orphan*/  lock; int /*<<< orphan*/  Thread; int /*<<< orphan*/  IfList; } ;
typedef  TYPE_1__ L3SW ;

/* Variables and functions */
 int /*<<< orphan*/  L3SwThread ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(L3SW *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC1(s->lock);
	{
		if (s->Active == false)
		{
			// Start if there is registered interface
			if (FUNC0(s->IfList) >= 1)
			{
				s->Halt = false;

				// Create a thread
				s->Thread = FUNC2(L3SwThread, s);
				FUNC4(s->Thread);
			}
		}
	}
	FUNC3(s->lock);
}