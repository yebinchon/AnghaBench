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
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_7__ {scalar_t__ suspend_parked; int sched_flags; scalar_t__ suspend_count; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int THREAD_ABORTSAFE ; 
 int THREAD_WAIT_NOREPORT_USER ; 
 int TH_SFLAG_ABORTED_MASK ; 
 int TH_SFLAG_DEPRESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  thread_suspended ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void
FUNC10(thread_t thread)
{
	FUNC6(thread);

	FUNC0(thread->suspend_parked == FALSE);

	spl_t s = FUNC2();
	FUNC5(thread);

	/* TH_SFLAG_POLLDEPRESS is OK to have here */
	FUNC0((thread->sched_flags & TH_SFLAG_DEPRESS) == 0);

	thread->sched_flags &= ~TH_SFLAG_ABORTED_MASK;
	FUNC9(thread);
	FUNC3(s);

	if (!thread->active) {
		/* Thread is ready to terminate, time to tear it down */
		FUNC7(thread);

		FUNC8();
		/*NOTREACHED*/
	}

	/* If we're suspended, go to sleep and wait for someone to wake us up. */
	if (thread->suspend_count > 0) {
		thread->suspend_parked = TRUE;
		FUNC1(&thread->suspend_count,
				THREAD_ABORTSAFE | THREAD_WAIT_NOREPORT_USER);
		FUNC7(thread);

		FUNC4(thread_suspended);
		/*NOTREACHED*/
	}

	FUNC7(thread);
}