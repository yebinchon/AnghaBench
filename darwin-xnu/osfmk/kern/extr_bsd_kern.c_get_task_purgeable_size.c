
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
typedef scalar_t__ ledger_amount_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {int purgeable_volatile_compressed; int purgeable_volatile; } ;
struct TYPE_4__ {int ledger; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ledger_get_entries (int ,int ,scalar_t__*,scalar_t__*) ;
 TYPE_2__ task_ledgers ;

uint64_t get_task_purgeable_size(task_t task)
{
 kern_return_t ret;
 ledger_amount_t credit, debit;
 uint64_t volatile_size = 0;

 ret = ledger_get_entries(task->ledger, task_ledgers.purgeable_volatile, &credit, &debit);
 if (ret != KERN_SUCCESS) {
  return 0;
 }

 volatile_size += (credit - debit);

 ret = ledger_get_entries(task->ledger, task_ledgers.purgeable_volatile_compressed, &credit, &debit);
 if (ret != KERN_SUCCESS) {
  return 0;
 }

 volatile_size += (credit - debit);

 return volatile_size;
}
