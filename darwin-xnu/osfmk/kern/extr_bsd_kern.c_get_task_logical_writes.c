
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct ledger_entry_info {int lei_balance; } ;
struct TYPE_8__ {int logical_writes; } ;
struct TYPE_7__ {int ledger; } ;


 TYPE_1__* TASK_NULL ;
 int assert (int) ;
 int ledger_get_entry_info (int ,int ,struct ledger_entry_info*) ;
 TYPE_4__ task_ledgers ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

uint64_t
get_task_logical_writes(task_t task)
{
    assert(task != TASK_NULL);
    struct ledger_entry_info lei;

    task_lock(task);
    ledger_get_entry_info(task->ledger, task_ledgers.logical_writes, &lei);

    task_unlock(task);
    return lei.lei_balance;
}
