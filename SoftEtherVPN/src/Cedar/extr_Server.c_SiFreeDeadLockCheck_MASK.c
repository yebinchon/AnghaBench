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
struct TYPE_3__ {int HaltDeadLockThread; int /*<<< orphan*/ * DeadLockWaitEvent; int /*<<< orphan*/ * DeadLockCheckThread; } ;
typedef  TYPE_1__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	if (s->DeadLockCheckThread == NULL)
	{
		return;
	}

	s->HaltDeadLockThread = true;
	FUNC2(s->DeadLockWaitEvent);

	FUNC3(s->DeadLockCheckThread, INFINITE);

	FUNC1(s->DeadLockCheckThread);
	s->DeadLockCheckThread = NULL;

	FUNC0(s->DeadLockWaitEvent);
	s->DeadLockWaitEvent = NULL;

	s->HaltDeadLockThread = false;
}