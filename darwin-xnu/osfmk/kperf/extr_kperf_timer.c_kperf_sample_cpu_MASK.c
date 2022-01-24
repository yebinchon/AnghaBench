#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct kperf_timer {int /*<<< orphan*/  pending_cpus; int /*<<< orphan*/  actionid; } ;
struct kperf_sample {int /*<<< orphan*/  sample_time; } ;
struct kperf_context {unsigned int trigger_id; int /*<<< orphan*/  cur_thread; int /*<<< orphan*/  trigger_type; int /*<<< orphan*/  cur_pid; int /*<<< orphan*/  cur_task; } ;
struct TYPE_2__ {int logical_cpu_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 unsigned int KPERF_SAMPLING_OFF ; 
 unsigned int KPERF_SAMPLING_SHUTDOWN ; 
 int PERF_TM_HNDLR ; 
 int SAMPLE_FLAG_ONLY_SYSTEM ; 
 int SAMPLE_FLAG_PEND_USER ; 
 int SAMPLE_FLAG_SYSTEM ; 
 int SAMPLE_OFF ; 
 int SAMPLE_SHUTDOWN ; 
 int /*<<< orphan*/  TRIGGER_TYPE_TIMER ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct kperf_sample* FUNC8 () ; 
 int FUNC9 (struct kperf_sample*,struct kperf_context*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/ * kperf_tid_on_cpus ; 
 int /*<<< orphan*/  kperf_timerv ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__ machine_info ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 scalar_t__ pet_timer_id ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct kperf_timer *timer, bool system_sample,
		bool only_system)
{
	FUNC3(timer != NULL);

	/* Always cut a tracepoint to show a sample event occurred */
	FUNC0(PERF_TM_HNDLR | DBG_FUNC_START, 0);

	int ncpu = FUNC5();

	struct kperf_sample *intbuf = FUNC8();
#if DEVELOPMENT || DEBUG
	intbuf->sample_time = mach_absolute_time();
#endif /* DEVELOPMENT || DEBUG */

	/* On a timer, we can see the "real" current thread */
	thread_t thread = FUNC6();
	task_t task = FUNC7(thread);
	struct kperf_context ctx = {
		.cur_thread = thread,
		.cur_task = task,
		.cur_pid = FUNC12(task),
		.trigger_type = TRIGGER_TYPE_TIMER,
		.trigger_id = (unsigned int)(timer - kperf_timerv),
	};

	if (ctx.trigger_id == pet_timer_id && ncpu < machine_info.logical_cpu_max) {
		kperf_tid_on_cpus[ncpu] = FUNC13(ctx.cur_thread);
	}

	/* make sure sampling is on */
	unsigned int status = FUNC10();
	if (status == KPERF_SAMPLING_OFF) {
		FUNC1(PERF_TM_HNDLR | DBG_FUNC_END, SAMPLE_OFF);
		return;
	} else if (status == KPERF_SAMPLING_SHUTDOWN) {
		FUNC1(PERF_TM_HNDLR | DBG_FUNC_END, SAMPLE_SHUTDOWN);
		return;
	}

	/* call the action -- kernel-only from interrupt, pend user */
	int r = FUNC9(intbuf, &ctx, timer->actionid,
			SAMPLE_FLAG_PEND_USER | (system_sample ? SAMPLE_FLAG_SYSTEM : 0) |
			(only_system ? SAMPLE_FLAG_ONLY_SYSTEM : 0));

	/* end tracepoint is informational */
	FUNC1(PERF_TM_HNDLR | DBG_FUNC_END, r);

	(void)FUNC4(&timer->pending_cpus,
			~(FUNC2(1) << ncpu), memory_order_relaxed);
}