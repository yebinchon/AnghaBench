
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* task_t ;
typedef scalar_t__ ledger_amount_t ;
typedef scalar_t__ kern_return_t ;
typedef int * bank_task_t ;
struct TYPE_5__ {int energy_billed_to_others; int cpu_time_billed_to_others; } ;
struct TYPE_4__ {int ledger; int * bank_context; } ;


 int * BANK_TASK_NULL ;
 scalar_t__ KERN_SUCCESS ;
 int bank_serviced_balance (int *,scalar_t__*,scalar_t__*) ;
 int bank_task_dealloc (int *,int) ;
 int bank_task_reference (int *) ;
 int global_bank_task_lock () ;
 int global_bank_task_unlock () ;
 scalar_t__ ledger_get_entries (int ,int ,scalar_t__*,scalar_t__*) ;
 TYPE_2__ task_ledgers ;

void
bank_serviced_balance_safe(task_t task, uint64_t *cpu_time, uint64_t *energy)
{
 bank_task_t bank_task = BANK_TASK_NULL;
 ledger_amount_t credit, debit;
 uint64_t cpu_balance = 0;
 uint64_t energy_balance = 0;
 kern_return_t kr;


 global_bank_task_lock();

 if (task->bank_context != ((void*)0)) {
  bank_task = task->bank_context;
  bank_task_reference(bank_task);
 }
 global_bank_task_unlock();

 if (bank_task) {
  bank_serviced_balance(bank_task, &cpu_balance, &energy_balance);
  bank_task_dealloc(bank_task, 1);
 } else {
  kr = ledger_get_entries(task->ledger, task_ledgers.cpu_time_billed_to_others,
   &credit, &debit);
  if (kr == KERN_SUCCESS) {
   cpu_balance = credit - debit;
  }

  kr = ledger_get_entries(task->ledger, task_ledgers.energy_billed_to_others,
   &credit, &debit);
  if (kr == KERN_SUCCESS) {
   energy_balance = credit - debit;
  }
 }

 *cpu_time = cpu_balance;
 *energy = energy_balance;
 return;
}
