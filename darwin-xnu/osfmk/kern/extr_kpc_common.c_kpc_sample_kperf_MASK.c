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
struct kperf_context {int /*<<< orphan*/  trigger_id; int /*<<< orphan*/  trigger_type; int /*<<< orphan*/  cur_pid; int /*<<< orphan*/  cur_task; int /*<<< orphan*/  cur_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int PERF_KPC_HNDLR ; 
 int /*<<< orphan*/  SAMPLE_FLAG_PEND_USER ; 
 int /*<<< orphan*/  TRIGGER_TYPE_PMI ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kperf_sample*,struct kperf_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(uint32_t actionid)
{
	struct kperf_sample sbuf;

	FUNC0(PERF_KPC_HNDLR | DBG_FUNC_START);

	thread_t thread = FUNC2();
	task_t task = FUNC3(thread);

	struct kperf_context ctx = {
		.cur_thread = thread,
		.cur_task = task,
		.cur_pid = FUNC5(task),
		.trigger_type = TRIGGER_TYPE_PMI,
		.trigger_id = 0,
	};

	int r = FUNC4(&sbuf, &ctx, actionid, SAMPLE_FLAG_PEND_USER);

	FUNC1(PERF_KPC_HNDLR | DBG_FUNC_END, r);
}