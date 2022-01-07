
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int task; } ;



task_t
proc_task(proc_t proc)
{
 return (task_t)proc->task;
}
