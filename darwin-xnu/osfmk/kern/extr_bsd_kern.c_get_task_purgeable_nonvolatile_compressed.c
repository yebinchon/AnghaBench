
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
struct TYPE_5__ {int purgeable_nonvolatile_compressed; } ;
struct TYPE_4__ {int ledger; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ledger_get_entries (int ,int ,scalar_t__*,scalar_t__*) ;
 TYPE_2__ task_ledgers ;

uint64_t get_task_purgeable_nonvolatile_compressed(task_t task)
{
 kern_return_t ret;
 ledger_amount_t credit, debit;

 ret = ledger_get_entries(task->ledger, task_ledgers.purgeable_nonvolatile_compressed, &credit, &debit);
 if (KERN_SUCCESS == ret) {
  return (credit - debit);
 }

 return 0;
}
