
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int roles ;
struct TYPE_4__ {scalar_t__* coalition; } ;


 int COALITION_NUM_TYPES ;
 int COALITION_TASKROLE_NONE ;
 int coal_call (scalar_t__,int ,TYPE_1__*) ;
 int coalition_lock (scalar_t__) ;
 int coalition_unlock (scalar_t__) ;
 int get_taskrole ;
 int memset (int*,int ,int) ;

void
task_coalition_roles(task_t task, int roles[COALITION_NUM_TYPES])
{
 int i;
 memset(roles, 0, COALITION_NUM_TYPES * sizeof(roles[0]));

 for (i = 0; i < COALITION_NUM_TYPES; i++) {
  if (task->coalition[i]) {
   coalition_lock(task->coalition[i]);
   roles[i] = coal_call(task->coalition[i],
          get_taskrole, task);
   coalition_unlock(task->coalition[i]);
  } else {
   roles[i] = COALITION_TASKROLE_NONE;
  }
 }
}
