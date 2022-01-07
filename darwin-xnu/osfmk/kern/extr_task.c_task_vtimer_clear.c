
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int integer_t ;
struct TYPE_6__ {int vtimers; } ;


 int assert (int) ;
 TYPE_1__* current_task () ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
task_vtimer_clear(
 task_t task,
 integer_t which)
{
 assert(task == current_task());

 task_lock(task);

 task->vtimers &= ~which;

 task_unlock(task);
}
