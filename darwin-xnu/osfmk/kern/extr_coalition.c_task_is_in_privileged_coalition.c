
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef int boolean_t ;
struct TYPE_5__ {TYPE_1__** coalition; } ;
struct TYPE_4__ {int privileged; } ;


 int COALITION_TYPE_MAX ;
 int FALSE ;
 int TRUE ;
 scalar_t__ unrestrict_coalition_syscalls ;

boolean_t
task_is_in_privileged_coalition(task_t task, int type)
{
 if (type < 0 || type > COALITION_TYPE_MAX)
  return FALSE;
 if (unrestrict_coalition_syscalls)
  return TRUE;
 if (!task->coalition[type])
  return FALSE;
 return task->coalition[type]->privileged;
}
