#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  processor_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {int state; int /*<<< orphan*/  wake_active; int /*<<< orphan*/  chosen_processor; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_RUN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(
	thread_t	thread,
	boolean_t	until_not_runnable)
{
	wait_result_t	wresult;
	boolean_t 	oncpu;
	processor_t	processor;
	spl_t		s = FUNC3();

	FUNC9(thread);
	FUNC7(thread);

	/*
	 * Wait until not running on a CPU.  If stronger requirement
	 * desired, wait until not runnable.  Assumption: if thread is
	 * on CPU, then TH_RUN is set, so we're not waiting in any case
	 * where the original, pure "TH_RUN" check would have let us 
	 * finish.
	 */
	while ((oncpu = FUNC6(thread)) ||
			(until_not_runnable && (thread->state & TH_RUN))) {

		if (oncpu) {
			FUNC0(thread->state & TH_RUN);
			processor = thread->chosen_processor;
			FUNC2(processor);
		}

		thread->wake_active = TRUE;
		FUNC8(thread);

		wresult = FUNC1(&thread->wake_active, THREAD_UNINT);
		FUNC10(thread);
		FUNC4(s);

		if (wresult == THREAD_WAITING)
			FUNC5(THREAD_CONTINUE_NULL);

		s = FUNC3();
		FUNC9(thread);
		FUNC7(thread);
	}

	FUNC8(thread);
	FUNC10(thread);
	FUNC4(s);
}