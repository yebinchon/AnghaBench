
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned long long uint64_t ;
typedef int thread_call_param_t ;
typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int * bsd_info; } ;
struct TYPE_10__ {int cpu_time; } ;
struct TYPE_9__ {int rusage_cpu_flags; unsigned long long rusage_cpu_perthr_interval; int rusage_cpu_perthr_percentage; int rusage_cpu_percentage; unsigned long long rusage_cpu_interval; unsigned long long rusage_cpu_deadline; int * rusage_cpu_callt; int ledger; int lock; } ;


 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT_OWNED ;
 int LEDGER_ACTION_BLOCK ;
 unsigned long long NSEC_PER_SEC ;
 int PROC_POLICY_CPUMON_DEFAULTS ;
 int PROC_POLICY_CPUMON_DISABLE ;
 int TASK_RUSECPU_FLAGS_DEADLINE ;
 int TASK_RUSECPU_FLAGS_PERTHR_LIMIT ;
 int TASK_RUSECPU_FLAGS_PROC_LIMIT ;
 int THREAD_CALL_PRIORITY_KERNEL ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int clock_absolutetime_interval_to_deadline (unsigned long long,unsigned long long*) ;
 TYPE_8__* current_task () ;
 int lck_mtx_assert (int *,int ) ;
 int ledger_set_action (int ,int ,int ) ;
 int ledger_set_limit (int ,int ,unsigned long long,int ) ;
 int ledger_set_period (int ,int ,unsigned long long) ;
 int nanoseconds_to_absolutetime (unsigned long long,unsigned long long*) ;
 int printf (char*,char const*,int) ;
 unsigned long long proc_max_cpumon_interval ;
 int proc_max_cpumon_percentage ;
 char* proc_name_address (int *) ;
 int proc_selfpid () ;
 int task_action_cpuusage ;
 int task_disable_cpumon (TYPE_1__*) ;
 int task_enable_cpumon_locked (TYPE_1__*) ;
 TYPE_5__ task_ledgers ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int * thread_call_allocate_with_priority (int ,int ,int ) ;
 int thread_call_cancel_wait (int *) ;
 int thread_call_enter_delayed (int *,unsigned long long) ;

__attribute__((used)) static int
task_set_cpuusage(task_t task, uint8_t percentage, uint64_t interval, uint64_t deadline, int scope, int cpumon_entitled)
{
 uint64_t abstime = 0;
 uint64_t limittime = 0;

 lck_mtx_assert(&task->lock, LCK_MTX_ASSERT_OWNED);


 if (interval == 0)
  interval = NSEC_PER_SEC;

 if (percentage != 0) {
  if (scope == TASK_RUSECPU_FLAGS_PERTHR_LIMIT) {
   boolean_t warn = FALSE;







   if (percentage == PROC_POLICY_CPUMON_DISABLE) {
    if (cpumon_entitled) {

     task_disable_cpumon(task);
     return 0;
    }
    warn = TRUE;
    percentage = PROC_POLICY_CPUMON_DEFAULTS;
   }

   if (percentage == PROC_POLICY_CPUMON_DEFAULTS) {
    percentage = proc_max_cpumon_percentage;
    interval = proc_max_cpumon_interval;
   }

   if (percentage > 100) {
    percentage = 100;
   }







   if (interval == -1ULL) {
    if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_PERTHR_LIMIT) {
      interval = task->rusage_cpu_perthr_interval;
    } else {
     interval = proc_max_cpumon_interval;
    }
   }





    if ((percentage > proc_max_cpumon_percentage) && (cpumon_entitled == 0)) {
    warn = TRUE;
     percentage = proc_max_cpumon_percentage;
    }

    if ((interval > proc_max_cpumon_interval) && (cpumon_entitled == 0)) {
    warn = TRUE;
     interval = proc_max_cpumon_interval;
    }

   if (warn) {
    int pid = 0;
    const char *procname = "unknown";
    printf("process %s[%d] denied attempt to escape CPU monitor"
     " (missing required entitlement).\n", procname, pid);
   }


   task->rusage_cpu_perthr_percentage = percentage;
   task->rusage_cpu_perthr_interval = interval;


   (void)task_enable_cpumon_locked(task);
  } else if (scope == TASK_RUSECPU_FLAGS_PROC_LIMIT) {




   task->rusage_cpu_flags |= TASK_RUSECPU_FLAGS_PROC_LIMIT;
   task->rusage_cpu_percentage = percentage;
   task->rusage_cpu_interval = interval;

   limittime = (interval * percentage) / 100;
   nanoseconds_to_absolutetime(limittime, &abstime);

   ledger_set_limit(task->ledger, task_ledgers.cpu_time, abstime, 0);
   ledger_set_period(task->ledger, task_ledgers.cpu_time, interval);
   ledger_set_action(task->ledger, task_ledgers.cpu_time, LEDGER_ACTION_BLOCK);
  }
 }

 if (deadline != 0) {
  assert(scope == TASK_RUSECPU_FLAGS_DEADLINE);


  if (task->rusage_cpu_callt != ((void*)0)) {
   task_unlock(task);
   thread_call_cancel_wait(task->rusage_cpu_callt);
   task_lock(task);
  }
  if (task->rusage_cpu_callt == ((void*)0)) {
   task->rusage_cpu_callt = thread_call_allocate_with_priority(task_action_cpuusage, (thread_call_param_t)task, THREAD_CALL_PRIORITY_KERNEL);
  }

  if (task->rusage_cpu_callt != 0) {
   uint64_t save_abstime = 0;

   task->rusage_cpu_flags |= TASK_RUSECPU_FLAGS_DEADLINE;
   task->rusage_cpu_deadline = deadline;

   nanoseconds_to_absolutetime(deadline, &abstime);
   save_abstime = abstime;
   clock_absolutetime_interval_to_deadline(save_abstime, &abstime);
   thread_call_enter_delayed(task->rusage_cpu_callt, abstime);
  }
 }

 return(0);
}
