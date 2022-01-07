
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef TYPE_1__* task_inspect_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_space_inspect_t ;
typedef int ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_space; int active; } ;


 scalar_t__ IPC_SPACE_INSPECT_NULL ;
 TYPE_1__* TASK_INSPECT_NULL ;
 TYPE_1__* convert_port_to_locked_task_inspect (int ) ;
 int is_reference (int ) ;
 int task_unlock (TYPE_1__*) ;

ipc_space_inspect_t
convert_port_to_space_inspect(
 ipc_port_t port)
{
 ipc_space_inspect_t space;
 task_inspect_t task;

 task = convert_port_to_locked_task_inspect(port);

 if (task == TASK_INSPECT_NULL)
  return IPC_SPACE_INSPECT_NULL;

 if (!task->active) {
  task_unlock(task);
  return IPC_SPACE_INSPECT_NULL;
 }

 space = (ipc_space_inspect_t)task->itk_space;
 is_reference((ipc_space_t)space);
 task_unlock((task_t)task);
 return space;
}
