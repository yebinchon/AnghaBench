
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ thread_call_t ;
typedef TYPE_1__* task_t ;
struct TYPE_8__ {int cpu_time; } ;
struct TYPE_7__ {int rusage_cpu_flags; scalar_t__ rusage_cpu_callt; scalar_t__ rusage_cpu_deadline; scalar_t__ rusage_cpu_interval; scalar_t__ rusage_cpu_percentage; int ledger; } ;


 int LEDGER_LIMIT_INFINITY ;
 int TASK_RUSECPU_FLAGS_DEADLINE ;
 int TASK_RUSECPU_FLAGS_PROC_LIMIT ;
 int ledger_set_limit (int ,int ,int ,int ) ;
 int task_disable_cpumon (TYPE_1__*) ;
 TYPE_4__ task_ledgers ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int thread_call_cancel_wait (scalar_t__) ;
 int thread_call_free (scalar_t__) ;

__attribute__((used)) static int
task_clear_cpuusage_locked(task_t task, int cpumon_entitled)
{
 thread_call_t savecallt;


 if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_PROC_LIMIT) {
  task->rusage_cpu_flags &= ~TASK_RUSECPU_FLAGS_PROC_LIMIT;
  ledger_set_limit(task->ledger, task_ledgers.cpu_time, LEDGER_LIMIT_INFINITY, 0);
  task->rusage_cpu_percentage = 0;
  task->rusage_cpu_interval = 0;
 }




 if (cpumon_entitled) {
  task_disable_cpumon(task);
 }


 if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_DEADLINE) {
  task->rusage_cpu_flags &= ~TASK_RUSECPU_FLAGS_DEADLINE;
  if (task->rusage_cpu_callt != 0) {
   savecallt = task->rusage_cpu_callt;
   task->rusage_cpu_callt = ((void*)0);
   task->rusage_cpu_deadline = 0;
   task_unlock(task);
   thread_call_cancel_wait(savecallt);
   thread_call_free(savecallt);
   task_lock(task);
  }
 }
 return(0);
}
