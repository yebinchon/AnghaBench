
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int * bank_task_t ;
struct TYPE_3__ {int * bank_context; } ;


 int bank_destroy_bank_task_ledger (int *) ;
 int bank_task_dealloc (int *,int) ;
 int global_bank_task_lock () ;
 int global_bank_task_unlock () ;

void
bank_task_destroy(task_t task)
{
 bank_task_t bank_task;


 global_bank_task_lock();
 bank_task = task->bank_context;
 task->bank_context = ((void*)0);
 global_bank_task_unlock();

 bank_destroy_bank_task_ledger(bank_task);
 bank_task_dealloc(bank_task, 1);
}
