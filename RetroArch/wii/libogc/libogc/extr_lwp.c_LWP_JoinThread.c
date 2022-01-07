
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int lwp_t ;
struct TYPE_6__ {int id; int * queue; void* ret_arg; int * ret_arg_1; scalar_t__ ret_code; } ;
struct TYPE_7__ {int join_list; TYPE_1__ wait; } ;
typedef TYPE_2__ lwp_cntrl ;


 int EDEADLK ;
 int LWP_WD_NOTIMEOUT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_2__* __lwp_cntrl_open (int ) ;
 int __lwp_thread_dispatchenable () ;
 scalar_t__ __lwp_thread_isexec (TYPE_2__*) ;
 int __lwp_threadqueue_csenter (int *) ;
 int __lwp_threadqueue_enqueue (int *,int ) ;
 TYPE_2__* _thr_executing ;

s32 LWP_JoinThread(lwp_t thethread,void **value_ptr)
{
 u32 level;
 void *return_ptr;
 lwp_cntrl *exec,*lwp_thread;

 lwp_thread = __lwp_cntrl_open(thethread);
 if(!lwp_thread) return 0;

 if(__lwp_thread_isexec(lwp_thread)) {
  __lwp_thread_dispatchenable();
  return EDEADLK;
 }

 exec = _thr_executing;
 _CPU_ISR_Disable(level);
 __lwp_threadqueue_csenter(&lwp_thread->join_list);
 exec->wait.ret_code = 0;
 exec->wait.ret_arg_1 = ((void*)0);
 exec->wait.ret_arg = (void*)&return_ptr;
 exec->wait.queue = &lwp_thread->join_list;
 exec->wait.id = thethread;
 _CPU_ISR_Restore(level);
 __lwp_threadqueue_enqueue(&lwp_thread->join_list,LWP_WD_NOTIMEOUT);
 __lwp_thread_dispatchenable();

 if(value_ptr) *value_ptr = return_ptr;
 return 0;
}
