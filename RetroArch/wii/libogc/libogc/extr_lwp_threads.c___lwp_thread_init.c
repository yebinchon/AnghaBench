
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int stack_size; int is_preemptible; int isr_level; int real_prio; scalar_t__ res_cnt; scalar_t__ suspendcnt; int cpu_time_budget; int cur_state; int budget_algo; int wait; int context; int join_list; int stack_allocated; void* stack; } ;
typedef TYPE_1__ lwp_cntrl ;


 int CPU_MINIMUM_STACK_SIZE ;
 int FALSE ;
 int LWP_CPU_BUDGET_ALGO_NONE ;
 int LWP_CPU_BUDGET_ALGO_TIMESLICE ;
 int LWP_STATES_DORMANT ;
 int LWP_STATES_WAITING_FOR_JOINATEXIT ;
 int LWP_THREADQ_MODEFIFO ;
 int TRUE ;
 int __libc_create_hook (int ,TYPE_1__*) ;
 int __lwp_stack_allocate (TYPE_1__*,int) ;
 int __lwp_stack_isenough (int) ;
 int __lwp_thread_setpriority (TYPE_1__*,int) ;
 int __lwp_threadqueue_init (int *,int ,int ,int ) ;
 int _lwp_ticks_per_timeslice ;
 int _thr_executing ;
 int kprintf (char*,TYPE_1__*,void*,int,int,int) ;
 int memset (int *,int ,int) ;

u32 __lwp_thread_init(lwp_cntrl *thethread,void *stack_area,u32 stack_size,u32 prio,u32 isr_level,bool is_preemtible)
{
 u32 act_stack_size = 0;





 if(!stack_area) {
  if(!__lwp_stack_isenough(stack_size))
   act_stack_size = CPU_MINIMUM_STACK_SIZE;
  else
   act_stack_size = stack_size;

  act_stack_size = __lwp_stack_allocate(thethread,act_stack_size);
  if(!act_stack_size) return 0;

  thethread->stack_allocated = TRUE;
 } else {
  thethread->stack = stack_area;
  act_stack_size = stack_size;
  thethread->stack_allocated = FALSE;
 }
 thethread->stack_size = act_stack_size;

 __lwp_threadqueue_init(&thethread->join_list,LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_JOINATEXIT,0);

 memset(&thethread->context,0,sizeof(thethread->context));
 memset(&thethread->wait,0,sizeof(thethread->wait));

 thethread->budget_algo = (prio<128 ? LWP_CPU_BUDGET_ALGO_NONE : LWP_CPU_BUDGET_ALGO_TIMESLICE);
 thethread->is_preemptible = is_preemtible;
 thethread->isr_level = isr_level;
 thethread->real_prio = prio;
 thethread->cur_state = LWP_STATES_DORMANT;
 thethread->cpu_time_budget = _lwp_ticks_per_timeslice;
 thethread->suspendcnt = 0;
 thethread->res_cnt = 0;
 __lwp_thread_setpriority(thethread,prio);

 __libc_create_hook(_thr_executing,thethread);

 return 1;
}
