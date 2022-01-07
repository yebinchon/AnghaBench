
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_purgeable_info_t ;
typedef scalar_t__ task_t ;
typedef int task_purgable_info_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ TASK_NULL ;
 int task_deallocate (scalar_t__) ;
 int task_reference (scalar_t__) ;
 int vm_purgeable_stats (int ,scalar_t__) ;

kern_return_t
task_purgable_info(
 task_t task,
 task_purgable_info_t *stats)
{
 if (task == TASK_NULL || stats == ((void*)0))
  return KERN_INVALID_ARGUMENT;

 task_reference(task);
 vm_purgeable_stats((vm_purgeable_info_t)stats, task);

 task_deallocate(task);
 return KERN_SUCCESS;
}
