
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int boolean_t ;
typedef TYPE_2__* bank_task_t ;
struct TYPE_12__ {TYPE_1__* bt_task; int bt_ledger; } ;
struct TYPE_11__ {TYPE_2__* bank_context; int ledger; } ;


 TYPE_2__* BANK_TASK_NULL ;
 int assert (int ) ;
 TYPE_2__* bank_task_alloc_init (TYPE_1__*) ;
 int bank_task_dealloc (TYPE_2__*,int) ;
 int global_bank_task_lock () ;
 int global_bank_task_unlock () ;
 int ledger_reference (int ) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

__attribute__((used)) static bank_task_t
get_bank_task_context
 (task_t task,
 boolean_t initialize)
{
 bank_task_t bank_task;

 if (task->bank_context || !initialize) {
  assert(task->bank_context != ((void*)0));
  return (task->bank_context);
 }

 bank_task = bank_task_alloc_init(task);


 task_lock(task);
 if (task->bank_context) {
  task_unlock(task);
  if (bank_task != BANK_TASK_NULL)
   bank_task_dealloc(bank_task, 1);
  return (task->bank_context);
 } else if (bank_task == BANK_TASK_NULL) {
  task_unlock(task);
  return BANK_TASK_NULL;
 }

 bank_task->bt_ledger = task->ledger;



 ledger_reference(task->ledger);


 global_bank_task_lock();
 task->bank_context = bank_task;
 global_bank_task_unlock();

 task_unlock(task);

 return (bank_task);
}
