
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int kern_return_t ;
struct TYPE_5__ {scalar_t__ bsd_info; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 TYPE_1__* TASK_NULL ;
 int task_terminate_internal (TYPE_1__*) ;

kern_return_t
task_terminate(
 task_t task)
{
 if (task == TASK_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (task->bsd_info)
  return (KERN_FAILURE);

 return (task_terminate_internal(task));
}
