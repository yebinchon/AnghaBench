
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_14__ {int information; } ;
struct TYPE_12__ {scalar_t__ ret_arg; } ;
struct TYPE_13__ {TYPE_9__ object; int budget_algo; scalar_t__ cpu_time_budget; TYPE_1__ wait; int join_list; int timer; } ;
typedef TYPE_2__ lwp_cntrl ;


 int LWP_CPU_BUDGET_ALGO_NONE ;
 int LWP_STATES_TRANSIENT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __libc_delete_hook (int ,TYPE_2__*) ;
 int __lwp_objmgr_close (int ,TYPE_9__*) ;
 int __lwp_objmgr_free (int ,TYPE_9__*) ;
 int __lwp_stack_free (TYPE_2__*) ;
 int __lwp_thread_deallocatefp () ;
 scalar_t__ __lwp_thread_isallocatedfp (TYPE_2__*) ;
 int __lwp_thread_setstate (TYPE_2__*,int ) ;
 TYPE_2__* __lwp_threadqueue_dequeue (int *) ;
 int __lwp_threadqueue_extractproxy (TYPE_2__*) ;
 scalar_t__ __lwp_wd_isactive (int *) ;
 int __lwp_wd_remove_ticks (int *) ;
 int _thr_executing ;

void __lwp_thread_close(lwp_cntrl *thethread)
{
 u32 level;
 void **value_ptr;
 lwp_cntrl *p;

 __lwp_thread_setstate(thethread,LWP_STATES_TRANSIENT);

 if(!__lwp_threadqueue_extractproxy(thethread)) {
  if(__lwp_wd_isactive(&thethread->timer))
   __lwp_wd_remove_ticks(&thethread->timer);
 }

 _CPU_ISR_Disable(level);
 value_ptr = (void**)thethread->wait.ret_arg;
 while((p=__lwp_threadqueue_dequeue(&thethread->join_list))!=((void*)0)) {
  *(void**)p->wait.ret_arg = value_ptr;
 }
 thethread->cpu_time_budget = 0;
 thethread->budget_algo = LWP_CPU_BUDGET_ALGO_NONE;
 _CPU_ISR_Restore(level);

 __libc_delete_hook(_thr_executing,thethread);

 if(__lwp_thread_isallocatedfp(thethread))
  __lwp_thread_deallocatefp();

 __lwp_stack_free(thethread);

 __lwp_objmgr_close(thethread->object.information,&thethread->object);
 __lwp_objmgr_free(thethread->object.information,&thethread->object);
}
