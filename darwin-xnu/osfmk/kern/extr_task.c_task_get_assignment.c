
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int * processor_set_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int active; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int pset0 ;

kern_return_t
task_get_assignment(
 task_t task,
 processor_set_t *pset)
{
 if (!task || !task->active)
  return KERN_FAILURE;

 *pset = &pset0;

 return KERN_SUCCESS;
}
