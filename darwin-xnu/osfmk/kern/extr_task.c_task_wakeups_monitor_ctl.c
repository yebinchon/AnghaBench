
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* task_t ;
typedef int ledger_t ;
typedef int ledger_amount_t ;
typedef int kern_return_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_8__ {int interrupt_wakeups; } ;
struct TYPE_7__ {int rusage_cpu_flags; int ledger; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LEDGER_LIMIT_INFINITY ;
 int NSEC_PER_SEC ;
 int TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON ;
 int TF_WAKEMON_WARNING ;
 int WAKEMON_DISABLE ;
 int WAKEMON_ENABLE ;
 int WAKEMON_GET_PARAMS ;
 int WAKEMON_MAKE_FATAL ;
 int WAKEMON_SET_DEFAULTS ;
 int ledger_disable_callback (int ,int ) ;
 int ledger_disable_refill (int ,int ) ;
 int ledger_enable_callback (int ,int ) ;
 int ledger_get_limit (int ,int ,int*) ;
 int ledger_get_period (int ,int ,int*) ;
 int ledger_set_limit (int ,int ,int,int ) ;
 int ledger_set_period (int ,int ,int) ;
 TYPE_6__ task_ledgers ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int task_wakeups_monitor_interval ;
 int task_wakeups_monitor_rate ;
 int task_wakeups_monitor_ustackshots_trigger_pct ;
 int telemetry_task_ctl_locked (TYPE_1__*,int ,int ) ;

kern_return_t
task_wakeups_monitor_ctl(task_t task, uint32_t *flags, int32_t *rate_hz)
{
 ledger_t ledger = task->ledger;

 task_lock(task);
 if (*flags & WAKEMON_GET_PARAMS) {
  ledger_amount_t limit;
  uint64_t period;

  ledger_get_limit(ledger, task_ledgers.interrupt_wakeups, &limit);
  ledger_get_period(ledger, task_ledgers.interrupt_wakeups, &period);

  if (limit != LEDGER_LIMIT_INFINITY) {



   *rate_hz = (int32_t)(limit / (int64_t)(period / NSEC_PER_SEC));
   *flags = WAKEMON_ENABLE;
   if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON) {
    *flags |= WAKEMON_MAKE_FATAL;
   }
  } else {
   *flags = WAKEMON_DISABLE;
   *rate_hz = -1;
  }




   task_unlock(task);
  return KERN_SUCCESS;
 }

 if (*flags & WAKEMON_ENABLE) {
  if (*flags & WAKEMON_SET_DEFAULTS) {
   *rate_hz = task_wakeups_monitor_rate;
  }


  if (*flags & WAKEMON_MAKE_FATAL) {
   task->rusage_cpu_flags |= TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON;
  }


  if (*rate_hz <= 0) {
   task_unlock(task);
   return KERN_INVALID_ARGUMENT;
  }


  ledger_set_limit(ledger, task_ledgers.interrupt_wakeups, *rate_hz * task_wakeups_monitor_interval,
   task_wakeups_monitor_ustackshots_trigger_pct);
  ledger_set_period(ledger, task_ledgers.interrupt_wakeups, task_wakeups_monitor_interval * NSEC_PER_SEC);
  ledger_enable_callback(ledger, task_ledgers.interrupt_wakeups);

 } else if (*flags & WAKEMON_DISABLE) {
  ledger_disable_refill(ledger, task_ledgers.interrupt_wakeups);
  ledger_disable_callback(ledger, task_ledgers.interrupt_wakeups);
 }

 task_unlock(task);
 return KERN_SUCCESS;
}
