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
struct TYPE_4__ {int Halt; int /*<<< orphan*/  Lock; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  Thread; } ;
typedef  TYPE_1__ QUERYIPTHREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(QUERYIPTHREAD *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	t->Halt = true;
	FUNC4(t->HaltEvent);

	FUNC5(t->Thread, INFINITE);
	FUNC3(t->Thread);

	FUNC2(t->HaltEvent);

	FUNC0(t->Lock);

	FUNC1(t);
}