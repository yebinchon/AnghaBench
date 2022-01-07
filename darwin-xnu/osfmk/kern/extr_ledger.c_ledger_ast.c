
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
struct ledger {int dummy; } ;
typedef scalar_t__ kern_return_t ;
struct TYPE_8__ {scalar_t__ rusage_cpu_flags; scalar_t__ rusage_cpu_perthr_percentage; scalar_t__ rusage_cpu_perthr_interval; scalar_t__ halting; int active; } ;
struct TYPE_7__ {int options; struct ledger* t_threadledger; int active; TYPE_2__* task; struct ledger* t_ledger; } ;


 int ASSERT (int) ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ LEDGER_VALID (struct ledger*) ;
 scalar_t__ TASK_RUSECPU_FLAGS_PERTHR_LIMIT ;
 int THREAD_CPULIMIT_DISABLE ;
 int THREAD_CPULIMIT_EXCEPTION ;
 int TH_OPT_PROC_CPULIMIT ;
 int TH_OPT_PRVT_CPULIMIT ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int ledger_check_needblock (struct ledger*,scalar_t__) ;
 scalar_t__ ledger_perform_blocking (struct ledger*) ;
 int lprintf (char*) ;
 scalar_t__ mach_absolute_time () ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;
 int thread_get_cpulimit (int*,scalar_t__*,scalar_t__*) ;
 int thread_set_cpulimit (int ,scalar_t__,scalar_t__) ;

void
ledger_ast(thread_t thread)
{
 struct ledger *l = thread->t_ledger;
 struct ledger *thl;
 uint32_t block;
 uint64_t now;
 uint8_t task_flags;
 uint8_t task_percentage;
 uint64_t task_interval;

 kern_return_t ret;
 task_t task = thread->task;

 lprintf(("Ledger AST for %p\n", thread));

 ASSERT(task != ((void*)0));
 ASSERT(thread == current_thread());

top:




 task_lock(task);
 task_flags = task->rusage_cpu_flags;
 task_percentage = task->rusage_cpu_perthr_percentage;
 task_interval = task->rusage_cpu_perthr_interval;
 task_unlock(task);





 if (((task_flags & TASK_RUSECPU_FLAGS_PERTHR_LIMIT) != 0) &&
     ((thread->options & TH_OPT_PRVT_CPULIMIT) == 0)) {
  uint8_t percentage;
  uint64_t interval;
  int action;

  thread_get_cpulimit(&action, &percentage, &interval);





  if (((thread->options & TH_OPT_PROC_CPULIMIT) == 0) ||
      (interval != task_interval) || (percentage != task_percentage)) {
   thread_set_cpulimit(THREAD_CPULIMIT_EXCEPTION, task_percentage, task_interval);
   assert((thread->options & TH_OPT_PROC_CPULIMIT) != 0);
  }
 } else if (((task_flags & TASK_RUSECPU_FLAGS_PERTHR_LIMIT) == 0) &&
     (thread->options & TH_OPT_PROC_CPULIMIT)) {
  assert((thread->options & TH_OPT_PRVT_CPULIMIT) == 0);





  thread_set_cpulimit(THREAD_CPULIMIT_DISABLE, 0, 0);
  assert((thread->options & TH_OPT_PROC_CPULIMIT) == 0);
 }




 if ((l == ((void*)0)) || !task->active || task->halting || !thread->active)
  return;






 block = 0;
 now = mach_absolute_time();





 thl = thread->t_threadledger;
 if (LEDGER_VALID(thl)) {
  block |= ledger_check_needblock(thl, now);
 }
 block |= ledger_check_needblock(l, now);







 if (block) {
  if (LEDGER_VALID(thl)) {
   ret = ledger_perform_blocking(thl);
   if (ret != KERN_SUCCESS)
    goto top;
  }
  ret = ledger_perform_blocking(l);
  if (ret != KERN_SUCCESS)
   goto top;
 }
}
