
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xstate_t ;
typedef TYPE_1__* task_t ;
struct TYPE_4__ {int xstate; } ;


 TYPE_1__* TASK_NULL ;
 int fpu_default ;

__attribute__((used)) static xstate_t
task_xstate(task_t task)
{
 if (task == TASK_NULL)
  return fpu_default;
 else
  return task->xstate;
}
