
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ledger_t ;
typedef TYPE_1__* bank_task_t ;
struct TYPE_3__ {int bt_acc_to_pay_lock; int bt_ledger; } ;


 int LEDGER_NULL ;
 int LEDGER_VALID (int ) ;
 int assert (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int ledger_dereference (int ) ;

__attribute__((used)) static void
bank_destroy_bank_task_ledger(bank_task_t bank_task)
{
 ledger_t ledger;


 lck_mtx_lock(&bank_task->bt_acc_to_pay_lock);
 assert(LEDGER_VALID(bank_task->bt_ledger));
 ledger = bank_task->bt_ledger;
 bank_task->bt_ledger = LEDGER_NULL;
 lck_mtx_unlock(&bank_task->bt_acc_to_pay_lock);

 ledger_dereference(ledger);
}
