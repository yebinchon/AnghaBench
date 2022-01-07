
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int t_procflags; } ;


 int TPF_EXEC_COPY ;

void
task_clear_exec_copy_flag(task_t task)
{
 task->t_procflags &= ~TPF_EXEC_COPY;
}
