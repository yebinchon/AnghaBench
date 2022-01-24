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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {int /*<<< orphan*/  cur_pid; int /*<<< orphan*/  cur_task; int /*<<< orphan*/  cur_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,...) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int PERF_AST_HNDLR ; 
 unsigned int SAMPLER_TH_DISPATCH ; 
 unsigned int SAMPLER_TH_INFO ; 
 unsigned int SAMPLER_USTACK ; 
 int SAMPLE_CONTINUE ; 
 int T_KPERF_AST_CALLSTACK ; 
 int T_KPERF_AST_DISPATCH ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kperf_sample*,struct kperf_context*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kperf_sample*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((noinline))
void
FUNC9(thread_t thread)
{
	FUNC0(PERF_AST_HNDLR | DBG_FUNC_START, thread, FUNC3(thread));

	/* ~2KB of the stack for the sample since this is called from AST */
	struct kperf_sample sbuf;
	FUNC5(&sbuf, 0, sizeof(struct kperf_sample));

	task_t task = FUNC2(thread);

	if (FUNC6(task) || FUNC7(task)) {
		FUNC0(PERF_AST_HNDLR | DBG_FUNC_END, SAMPLE_CONTINUE);
		return;
	}

	/* make a context, take a sample */
	struct kperf_context ctx = {
		.cur_thread = thread,
		.cur_task = task,
		.cur_pid = FUNC8(task),
	};

	/* decode the flags to determine what to sample */
	unsigned int sample_what = 0;
	uint32_t flags = FUNC3(thread);

	if (flags & T_KPERF_AST_DISPATCH) {
		sample_what |= SAMPLER_TH_DISPATCH;
	}
	if (flags & T_KPERF_AST_CALLSTACK) {
		sample_what |= SAMPLER_USTACK;
		sample_what |= SAMPLER_TH_INFO;
	}

	uint32_t ucallstack_depth = FUNC1(flags);

	int r = FUNC4(&sbuf, &ctx, sample_what, 0, 0, ucallstack_depth);

	FUNC0(PERF_AST_HNDLR | DBG_FUNC_END, r);
}