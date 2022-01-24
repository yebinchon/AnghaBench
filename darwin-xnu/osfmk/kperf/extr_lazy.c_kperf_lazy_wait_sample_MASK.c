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
typedef  scalar_t__ thread_continue_t ;
typedef  int /*<<< orphan*/  task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {uintptr_t* starting_fp; int /*<<< orphan*/  trigger_type; int /*<<< orphan*/  cur_pid; int /*<<< orphan*/  cur_task; TYPE_1__* cur_thread; } ;
struct TYPE_5__ {scalar_t__ last_made_runnable_time; scalar_t__ last_run_time; int /*<<< orphan*/  system_timer; int /*<<< orphan*/  user_timer; int /*<<< orphan*/  runnable_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PERF_LZ_WAITSAMPLE ; 
 unsigned int SAMPLE_FLAG_CONTINUATION ; 
 unsigned int SAMPLE_FLAG_NON_INTERRUPT ; 
 unsigned int SAMPLE_FLAG_PEND_USER ; 
 scalar_t__ THREAD_NOT_RUNNABLE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_LAZY_WAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct kperf_sample* FUNC2 () ; 
 int /*<<< orphan*/  kperf_lazy_wait_action ; 
 scalar_t__ kperf_lazy_wait_time_threshold ; 
 int /*<<< orphan*/  FUNC3 (struct kperf_sample*,struct kperf_context*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC10(thread_t thread, thread_continue_t continuation,
		uintptr_t *starting_fp)
{
	/* ignore idle threads */
	if (thread->last_made_runnable_time == THREAD_NOT_RUNNABLE) {
		return;
	}
	/* ignore invalid made runnable times */
	if (thread->last_made_runnable_time < thread->last_run_time) {
		return;
	}

	/* take a sample if thread was waiting for longer than threshold */
	uint64_t wait_time = FUNC7(thread);
	if (wait_time > kperf_lazy_wait_time_threshold) {
		uint64_t time_now = FUNC4();
		FUNC9(&thread->runnable_timer, time_now);
		FUNC9(&thread->system_timer, time_now);

		uint64_t runnable_time = FUNC8(&thread->runnable_timer);
		uint64_t running_time = FUNC8(&thread->user_timer) +
				FUNC8(&thread->system_timer);

		FUNC0(PERF_LZ_WAITSAMPLE, wait_time, runnable_time, running_time);

		task_t task = FUNC1(thread);
		struct kperf_context ctx = {
			.cur_thread = thread,
			.cur_task = task,
			.cur_pid = FUNC6(task),
			.trigger_type = TRIGGER_TYPE_LAZY_WAIT,
			.starting_fp = starting_fp,
		};

		struct kperf_sample *sample = FUNC2();
		if (!sample) {
			return;
		}

		unsigned int flags = SAMPLE_FLAG_PEND_USER;
		flags |= continuation ? SAMPLE_FLAG_CONTINUATION : 0;
		flags |= !FUNC5() ? SAMPLE_FLAG_NON_INTERRUPT : 0;

		FUNC3(sample, &ctx, kperf_lazy_wait_action, flags);
	}
}