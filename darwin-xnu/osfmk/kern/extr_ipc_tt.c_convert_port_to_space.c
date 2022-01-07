
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int ipc_space_t ;
typedef int ipc_port_t ;
struct TYPE_5__ {int itk_space; int active; } ;


 int IPC_SPACE_NULL ;
 TYPE_1__* TASK_NULL ;
 TYPE_1__* convert_port_to_locked_task (int ) ;
 int is_reference (int ) ;
 int task_unlock (TYPE_1__*) ;

ipc_space_t
convert_port_to_space(
 ipc_port_t port)
{
 ipc_space_t space;
 task_t task;

 task = convert_port_to_locked_task(port);

 if (task == TASK_NULL)
  return IPC_SPACE_NULL;

 if (!task->active) {
  task_unlock(task);
  return IPC_SPACE_NULL;
 }

 space = task->itk_space;
 is_reference(space);
 task_unlock(task);
 return (space);
}
