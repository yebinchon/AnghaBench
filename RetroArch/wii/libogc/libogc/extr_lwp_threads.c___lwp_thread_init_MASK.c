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
typedef  int u32 ;
struct TYPE_7__ {int stack_size; int is_preemptible; int isr_level; int real_prio; scalar_t__ res_cnt; scalar_t__ suspendcnt; int /*<<< orphan*/  cpu_time_budget; int /*<<< orphan*/  cur_state; int /*<<< orphan*/  budget_algo; int /*<<< orphan*/  wait; int /*<<< orphan*/  context; int /*<<< orphan*/  join_list; int /*<<< orphan*/  stack_allocated; void* stack; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int CPU_MINIMUM_STACK_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LWP_CPU_BUDGET_ALGO_NONE ; 
 int /*<<< orphan*/  LWP_CPU_BUDGET_ALGO_TIMESLICE ; 
 int /*<<< orphan*/  LWP_STATES_DORMANT ; 
 int /*<<< orphan*/  LWP_STATES_WAITING_FOR_JOINATEXIT ; 
 int /*<<< orphan*/  LWP_THREADQ_MODEFIFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lwp_ticks_per_timeslice ; 
 int /*<<< orphan*/  _thr_executing ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u32 FUNC7(lwp_cntrl *thethread,void *stack_area,u32 stack_size,u32 prio,u32 isr_level,bool is_preemtible)
{
	u32 act_stack_size = 0;

#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_init(%p,%p,%d,%d,%d)\n",thethread,stack_area,stack_size,prio,isr_level);
#endif

	if(!stack_area) {
		if(!FUNC2(stack_size))
			act_stack_size = CPU_MINIMUM_STACK_SIZE;
		else
			act_stack_size = stack_size;

		act_stack_size = FUNC1(thethread,act_stack_size);
		if(!act_stack_size) return 0;

		thethread->stack_allocated = TRUE;
	} else {
		thethread->stack = stack_area;
		act_stack_size = stack_size;
		thethread->stack_allocated = FALSE;
	}
	thethread->stack_size = act_stack_size;

	FUNC4(&thethread->join_list,LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_JOINATEXIT,0);

	FUNC6(&thethread->context,0,sizeof(thethread->context));
	FUNC6(&thethread->wait,0,sizeof(thethread->wait));

	thethread->budget_algo = (prio<128 ? LWP_CPU_BUDGET_ALGO_NONE : LWP_CPU_BUDGET_ALGO_TIMESLICE);
	thethread->is_preemptible = is_preemtible;
	thethread->isr_level = isr_level;
	thethread->real_prio = prio;
	thethread->cur_state = LWP_STATES_DORMANT;
	thethread->cpu_time_budget = _lwp_ticks_per_timeslice;
	thethread->suspendcnt = 0;
	thethread->res_cnt = 0;
	FUNC3(thethread,prio);

	FUNC0(_thr_executing,thethread);

	return 1;
}