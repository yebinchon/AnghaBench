#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_5__ {scalar_t__ last_made_runnable_time; scalar_t__ last_run_time; int /*<<< orphan*/  sched_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PERF_LZ_MKRUNNABLE ; 
 scalar_t__ THREAD_NOT_RUNNABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ kperf_lazy_wait_time_threshold ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void
FUNC4(thread_t thread, bool in_interrupt)
{
	FUNC1(thread->last_made_runnable_time != THREAD_NOT_RUNNABLE);
	/* ignore threads that race to wait and in waking up */
	if (thread->last_run_time > thread->last_made_runnable_time) {
		return;
	}

	uint64_t wait_time = FUNC2(thread);
	if (wait_time > kperf_lazy_wait_time_threshold) {
		FUNC0(PERF_LZ_MKRUNNABLE, (uintptr_t)FUNC3(thread),
				thread->sched_pri, in_interrupt ? 1 : 0);
	}
}