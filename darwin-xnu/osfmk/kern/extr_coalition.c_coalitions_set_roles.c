
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef scalar_t__ kern_return_t ;
typedef int coalition_t ;


 int COALITION_NUM_TYPES ;
 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 scalar_t__ coal_call (int ,int ,int ,int) ;
 int coalition_lock (int ) ;
 int coalition_unlock (int ) ;
 int set_taskrole ;

kern_return_t coalitions_set_roles(coalition_t coalitions[COALITION_NUM_TYPES],
       task_t task, int roles[COALITION_NUM_TYPES])
{
 kern_return_t kr = KERN_SUCCESS;
 int i;

 for (i = 0; i < COALITION_NUM_TYPES; i++) {
  if (!coalitions[i])
   continue;
  coalition_lock(coalitions[i]);
  kr = coal_call(coalitions[i], set_taskrole, task, roles[i]);
  coalition_unlock(coalitions[i]);
  assert(kr == KERN_SUCCESS);
 }

 return kr;
}
