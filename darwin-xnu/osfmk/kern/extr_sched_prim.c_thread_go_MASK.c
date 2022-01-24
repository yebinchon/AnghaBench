#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {scalar_t__ at_safe_point; scalar_t__ wait_event; int state; int /*<<< orphan*/ * thread_wakeup_bt; int /*<<< orphan*/ * waitq; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ NO_EVENT64 ; 
 int SCHED_PREEMPT ; 
 int SCHED_TAILQ ; 
 int TH_TERMINATE ; 
 int TH_TERMINATE2 ; 
 int TH_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
          thread_t        thread,
          wait_result_t   wresult)
{
	FUNC1(thread);

	FUNC0(thread->at_safe_point == FALSE);
	FUNC0(thread->wait_event == NO_EVENT64);
	FUNC0(thread->waitq == NULL);

	FUNC0(!(thread->state & (TH_TERMINATE|TH_TERMINATE2)));
	FUNC0(thread->state & TH_WAIT);


	if (FUNC4(thread, wresult)) {
#if	SCHED_TRACE_THREAD_WAKEUPS
		backtrace(&thread->thread_wakeup_bt[0],
		    (sizeof(thread->thread_wakeup_bt)/sizeof(uintptr_t)));
#endif
		FUNC3(thread, SCHED_PREEMPT | SCHED_TAILQ);
	}

	return (KERN_SUCCESS);
}