#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int wait_result_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/ * thread_continue_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_12__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_SCHED_THREAD_SWITCH ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,void*,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static wait_result_t
FUNC11(thread_t thread, thread_continue_t continuation,
		void *parameter)
{
	thread_t deallocate_thread = THREAD_NULL;
	thread_t self = FUNC2();

	/*
	 * Try to handoff if supplied.
	 */
	if (thread != THREAD_NULL) {
		spl_t s = FUNC3();

		thread_t pulled_thread = FUNC9(thread);

		FUNC0(FUNC1(DBG_MACH_SCHED,MACH_SCHED_THREAD_SWITCH)|DBG_FUNC_NONE,
				      FUNC10(thread), thread->state,
				      pulled_thread ? TRUE : FALSE, 0, 0);

		if (pulled_thread != THREAD_NULL) {
			if (continuation == NULL) {
				/* We can't be dropping the last ref here */
				FUNC7(thread);
			}

			int result = FUNC8(self, continuation, parameter, pulled_thread);

			FUNC4(s);
			return result;
		}

		FUNC4(s);

		deallocate_thread = thread;
		thread = THREAD_NULL;
	}

	int result = FUNC5(continuation, parameter);
	if (deallocate_thread != THREAD_NULL) {
		FUNC6(deallocate_thread);
	}

	return result;
}