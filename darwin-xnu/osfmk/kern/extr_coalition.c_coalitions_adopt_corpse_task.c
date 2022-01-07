
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ coalitions_adopt_task (int ,int ) ;
 int corpse_coalition ;
 int panic (char*,int ,scalar_t__) ;

kern_return_t
coalitions_adopt_corpse_task(task_t task)
{
 kern_return_t kr;
 kr = coalitions_adopt_task(corpse_coalition, task);
 if (kr != KERN_SUCCESS) {
  panic("failed to adopt task %p into corpse coalition: %d", task, kr);
 }
 return kr;
}
