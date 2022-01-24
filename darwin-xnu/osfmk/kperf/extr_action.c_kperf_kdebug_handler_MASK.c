#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {uintptr_t* starting_fp; int /*<<< orphan*/  trigger_id; int /*<<< orphan*/  trigger_type; int /*<<< orphan*/  cur_pid; int /*<<< orphan*/  cur_task; int /*<<< orphan*/  cur_thread; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int PERF_KDBG_HNDLR ; 
 int /*<<< orphan*/  SAMPLE_FLAG_NON_INTERRUPT ; 
 int /*<<< orphan*/  SAMPLE_FLAG_PEND_USER ; 
 int /*<<< orphan*/  TRIGGER_TYPE_KDEBUG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct kperf_sample* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kperf_sample*,struct kperf_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(uint32_t debugid, uintptr_t *starting_fp)
{
	uint32_t sample_flags = SAMPLE_FLAG_PEND_USER;
	struct kperf_sample *sample = NULL;
	kern_return_t kr = KERN_SUCCESS;
	int s;

	if (!FUNC5(debugid)) {
		return;
	}

	FUNC0(PERF_KDBG_HNDLR | DBG_FUNC_START, debugid);

	thread_t thread = FUNC1();
	task_t task = FUNC2(thread);
	struct kperf_context ctx = {
		.cur_thread = thread,
		.cur_task = task,
		.cur_pid = FUNC9(task),
		.trigger_type = TRIGGER_TYPE_KDEBUG,
		.trigger_id = 0,
	};

	s = FUNC8(0);

	sample = FUNC3();

	if (!FUNC7()) {
		sample_flags |= SAMPLE_FLAG_NON_INTERRUPT;
		ctx.starting_fp = starting_fp;
	}

	kr = FUNC6(sample, &ctx, FUNC4(), sample_flags);

	FUNC8(s);
	FUNC0(PERF_KDBG_HNDLR | DBG_FUNC_END, kr);
}