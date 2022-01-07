
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef int processor_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int state; int wake_active; int chosen_processor; } ;


 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 scalar_t__ THREAD_WAITING ;
 int TH_RUN ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ assert_wait (int *,int ) ;
 int cause_ast_check (int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_block (int ) ;
 scalar_t__ thread_isoncpu (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 int wake_lock (TYPE_1__*) ;
 int wake_unlock (TYPE_1__*) ;

void
thread_wait(
 thread_t thread,
 boolean_t until_not_runnable)
{
 wait_result_t wresult;
 boolean_t oncpu;
 processor_t processor;
 spl_t s = splsched();

 wake_lock(thread);
 thread_lock(thread);
 while ((oncpu = thread_isoncpu(thread)) ||
   (until_not_runnable && (thread->state & TH_RUN))) {

  if (oncpu) {
   assert(thread->state & TH_RUN);
   processor = thread->chosen_processor;
   cause_ast_check(processor);
  }

  thread->wake_active = TRUE;
  thread_unlock(thread);

  wresult = assert_wait(&thread->wake_active, THREAD_UNINT);
  wake_unlock(thread);
  splx(s);

  if (wresult == THREAD_WAITING)
   thread_block(THREAD_CONTINUE_NULL);

  s = splsched();
  wake_lock(thread);
  thread_lock(thread);
 }

 thread_unlock(thread);
 wake_unlock(thread);
 splx(s);
}
