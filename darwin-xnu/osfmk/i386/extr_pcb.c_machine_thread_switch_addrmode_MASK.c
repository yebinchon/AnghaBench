#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(thread_t thread)
{
	/*
	 * We don't want to be preempted until we're done
	 * - particularly if we're switching the current thread
	 */
	FUNC2();

	/*
	 * Reset the state saveareas. As we're resetting, we anticipate no
	 * memory allocations in this path.
	 */
	FUNC5(thread, thread->task);

	/* Adjust FPU state */
	FUNC4(thread, FUNC7(thread->task));

	/* If we're switching ourselves, reset the pcb addresses etc. */
	if (thread == FUNC1()) {
		boolean_t istate = FUNC6(FALSE);
		FUNC0(NULL, thread);
		FUNC6(istate);
	}
	FUNC3();
}