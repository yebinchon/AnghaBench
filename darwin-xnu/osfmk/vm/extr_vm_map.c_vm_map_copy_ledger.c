
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef scalar_t__ ledger_amount_t ;
struct TYPE_6__ {int ledger; TYPE_1__* map; } ;
struct TYPE_5__ {int has_corpse_footprint; } ;


 int assert (int ) ;
 int ledger_credit (int ,int,scalar_t__) ;
 int ledger_debit (int ,int,scalar_t__) ;
 int ledger_disable_panic_on_negative (int ,int) ;
 int ledger_get_balance (int ,int,scalar_t__*) ;

void
vm_map_copy_ledger(
 task_t old_task,
 task_t new_task,
 int ledger_entry)
{
 ledger_amount_t old_balance, new_balance, delta;

 assert(new_task->map->has_corpse_footprint);
 if (!new_task->map->has_corpse_footprint)
  return;


 ledger_disable_panic_on_negative(new_task->ledger,
      ledger_entry);


 ledger_get_balance(old_task->ledger,
      ledger_entry,
      &old_balance);
 ledger_get_balance(new_task->ledger,
      ledger_entry,
      &new_balance);
 if (new_balance == old_balance) {

 } else if (new_balance > old_balance) {

  delta = new_balance - old_balance;
  ledger_debit(new_task->ledger,
        ledger_entry,
        delta);
 } else {

  delta = old_balance - new_balance;
  ledger_credit(new_task->ledger,
         ledger_entry,
         delta);
 }
}
