#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_3__ {int budget_algo; int /*<<< orphan*/  cpu_time_budget; int /*<<< orphan*/  cur_state; int /*<<< orphan*/  is_preemptible; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
#define  LWP_CPU_BUDGET_ALGO_NONE 129 
#define  LWP_CPU_BUDGET_ALGO_TIMESLICE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lwp_ticks_per_timeslice ; 
 int /*<<< orphan*/  _lwp_wd_timeslice ; 
 TYPE_1__* _thr_executing ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void *arg)
{
	s64 ticks;
	lwp_cntrl *exec;

	exec = _thr_executing;
	ticks = FUNC5(1);

	FUNC1();

	if(!exec->is_preemptible) {
		FUNC4(&_lwp_wd_timeslice,ticks);
		FUNC2();
		return;
	}
	if(!FUNC0(exec->cur_state)) {
		FUNC4(&_lwp_wd_timeslice,ticks);
		FUNC2();
		return;
	}

	switch(exec->budget_algo) {
		case LWP_CPU_BUDGET_ALGO_NONE:
			break;
		case LWP_CPU_BUDGET_ALGO_TIMESLICE:
			if((--exec->cpu_time_budget)==0) {
				FUNC3();
				exec->cpu_time_budget = _lwp_ticks_per_timeslice;
			}
			break;
	}

	FUNC4(&_lwp_wd_timeslice,ticks);
	FUNC2();
}