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
typedef  int /*<<< orphan*/  thread_t ;
struct kperf_thread_info {int /*<<< orphan*/  kpthi_runmode; int /*<<< orphan*/  kpthi_dq_addr; scalar_t__ kpthi_tid; int /*<<< orphan*/  kpthi_pid; } ;
struct kperf_context {int /*<<< orphan*/  cur_pid; int /*<<< orphan*/  cur_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DBG_FUNC_END ; 
 int PERF_TI_SAMPLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct kperf_thread_info *ti, struct kperf_context *context)
{
	thread_t cur_thread = context->cur_thread;

	FUNC0(PERF_TI_SAMPLE, (uintptr_t)FUNC4(cur_thread));

	ti->kpthi_pid = context->cur_pid;
	ti->kpthi_tid = FUNC4(cur_thread);
	ti->kpthi_dq_addr = FUNC3(cur_thread);
	ti->kpthi_runmode = FUNC2(cur_thread);

	FUNC1(PERF_TI_SAMPLE | DBG_FUNC_END);
}