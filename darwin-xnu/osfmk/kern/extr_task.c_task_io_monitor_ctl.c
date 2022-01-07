
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
typedef int ledger_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int logical_writes; int physical_writes; } ;
struct TYPE_6__ {int ledger; } ;


 int IOMON_DISABLE ;
 int IOMON_ENABLE ;
 int KERN_SUCCESS ;
 int NSEC_PER_SEC ;
 int ledger_disable_callback (int ,int ) ;
 int ledger_disable_refill (int ,int ) ;
 int ledger_set_limit (int ,int ,int,int ) ;
 int ledger_set_period (int ,int ,int) ;
 int task_iomon_interval_secs ;
 int task_iomon_limit_mb ;
 TYPE_4__ task_ledgers ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

kern_return_t
task_io_monitor_ctl(task_t task, uint32_t *flags)
{
 ledger_t ledger = task->ledger;

 task_lock(task);
 if (*flags & IOMON_ENABLE) {

  ledger_set_limit(ledger, task_ledgers.physical_writes, (task_iomon_limit_mb * 1024 * 1024), 0);
  ledger_set_period(ledger, task_ledgers.physical_writes, (task_iomon_interval_secs * NSEC_PER_SEC));


  ledger_set_limit(ledger, task_ledgers.logical_writes, (task_iomon_limit_mb * 1024 * 1024), 0);
  ledger_set_period(ledger, task_ledgers.logical_writes, (task_iomon_interval_secs * NSEC_PER_SEC));

 } else if (*flags & IOMON_DISABLE) {



  ledger_disable_refill(ledger, task_ledgers.physical_writes);
  ledger_disable_callback(ledger, task_ledgers.physical_writes);
  ledger_disable_refill(ledger, task_ledgers.logical_writes);
  ledger_disable_callback(ledger, task_ledgers.logical_writes);
 }

 task_unlock(task);
 return KERN_SUCCESS;
}
