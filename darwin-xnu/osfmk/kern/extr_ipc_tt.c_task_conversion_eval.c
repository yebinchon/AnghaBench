
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int t_flags; } ;


 int KERN_INVALID_SECURITY ;
 int KERN_SUCCESS ;
 TYPE_1__* TASK_NULL ;
 int TF_PLATFORM ;
 scalar_t__ cs_relax_platform_task_ports ;
 TYPE_1__* kernel_task ;

kern_return_t
task_conversion_eval(task_t caller, task_t victim)
{




 if (caller == kernel_task) {
  return KERN_SUCCESS;
 }

 if (caller == victim) {
  return KERN_SUCCESS;
 }





 if (victim == TASK_NULL || victim == kernel_task) {
  return KERN_INVALID_SECURITY;
 }
 return KERN_SUCCESS;
}
