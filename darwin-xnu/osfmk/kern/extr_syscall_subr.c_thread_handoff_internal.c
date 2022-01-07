
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int wait_result_t ;
typedef TYPE_1__* thread_t ;
typedef int * thread_continue_t ;
typedef int spl_t ;
struct TYPE_12__ {int state; } ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_SCHED ;
 int FALSE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_SCHED_THREAD_SWITCH ;
 TYPE_1__* THREAD_NULL ;
 int TRUE ;
 TYPE_1__* current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_block_parameter (int *,void*) ;
 int thread_deallocate (TYPE_1__*) ;
 int thread_deallocate_safe (TYPE_1__*) ;
 int thread_run (TYPE_1__*,int *,void*,TYPE_1__*) ;
 TYPE_1__* thread_run_queue_remove_for_handoff (TYPE_1__*) ;
 int thread_tid (TYPE_1__*) ;

__attribute__((used)) static wait_result_t
thread_handoff_internal(thread_t thread, thread_continue_t continuation,
  void *parameter)
{
 thread_t deallocate_thread = THREAD_NULL;
 thread_t self = current_thread();




 if (thread != THREAD_NULL) {
  spl_t s = splsched();

  thread_t pulled_thread = thread_run_queue_remove_for_handoff(thread);

  KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED,MACH_SCHED_THREAD_SWITCH)|DBG_FUNC_NONE,
          thread_tid(thread), thread->state,
          pulled_thread ? TRUE : FALSE, 0, 0);

  if (pulled_thread != THREAD_NULL) {
   if (continuation == ((void*)0)) {

    thread_deallocate_safe(thread);
   }

   int result = thread_run(self, continuation, parameter, pulled_thread);

   splx(s);
   return result;
  }

  splx(s);

  deallocate_thread = thread;
  thread = THREAD_NULL;
 }

 int result = thread_block_parameter(continuation, parameter);
 if (deallocate_thread != THREAD_NULL) {
  thread_deallocate(deallocate_thread);
 }

 return result;
}
