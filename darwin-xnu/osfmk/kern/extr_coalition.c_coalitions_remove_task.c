
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef scalar_t__ kern_return_t ;


 int COALITION_NUM_TYPES ;
 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 scalar_t__ coalition_remove_task_internal (int ,int) ;

kern_return_t
coalitions_remove_task(task_t task)
{
 kern_return_t kr;
 int i;

 for (i = 0; i < COALITION_NUM_TYPES; i++) {
  kr = coalition_remove_task_internal(task, i);
  assert(kr == KERN_SUCCESS);
 }

 return kr;
}
