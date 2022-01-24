#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  processor_t ;
typedef  void* boolean_t ;
struct TYPE_9__ {int state; void* wake_active; int /*<<< orphan*/  chosen_processor; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
 scalar_t__ THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_RUN ; 
 int TH_SUSP ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

boolean_t
FUNC12(
	thread_t		thread,
	boolean_t	until_not_runnable)
{
	wait_result_t	wresult;
	spl_t			s = FUNC3();
	boolean_t		oncpu;

	FUNC10(thread);
	FUNC7(thread);

	while (thread->state & TH_SUSP) {
		thread->wake_active = TRUE;
		FUNC8(thread);

		wresult = FUNC1(&thread->wake_active, THREAD_ABORTSAFE);
		FUNC11(thread);
		FUNC4(s);

		if (wresult == THREAD_WAITING)
			wresult = FUNC5(THREAD_CONTINUE_NULL);

		if (wresult != THREAD_AWAKENED)
			return (FALSE);

		s = FUNC3();
		FUNC10(thread);
		FUNC7(thread);
	}

	thread->state |= TH_SUSP;

	while ((oncpu = FUNC6(thread)) ||
		   (until_not_runnable && (thread->state & TH_RUN))) {
		processor_t		processor;
		
		if (oncpu) {
			FUNC0(thread->state & TH_RUN);
			processor = thread->chosen_processor;
			FUNC2(processor);
		}

		thread->wake_active = TRUE;
		FUNC8(thread);

		wresult = FUNC1(&thread->wake_active, THREAD_ABORTSAFE);
		FUNC11(thread);
		FUNC4(s);

		if (wresult == THREAD_WAITING)
			wresult = FUNC5(THREAD_CONTINUE_NULL);

		if (wresult != THREAD_AWAKENED) {
			FUNC9(thread);
			return (FALSE);
		}

		s = FUNC3();
		FUNC10(thread);
		FUNC7(thread);
	}

	FUNC8(thread);
	FUNC11(thread);
	FUNC4(s);
	
	/*
	 * We return with the thread unlocked. To prevent it from
	 * transitioning to a runnable state (or from TH_RUN to
	 * being on the CPU), the caller must ensure the thread
	 * is stopped via an external means (such as an AST)
	 */

	return (TRUE);
}