
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* task_t ;
typedef int ipc_port_t ;
struct TYPE_5__ {int map; int active; } ;


 TYPE_1__* TASK_NULL ;
 int VM_MAP_NULL ;
 TYPE_1__* convert_port_to_locked_task (int ) ;
 int task_unlock (TYPE_1__*) ;
 int vm_map_reference_swap (int ) ;

vm_map_t
convert_port_to_map(
 ipc_port_t port)
{
 task_t task;
 vm_map_t map;

 task = convert_port_to_locked_task(port);

 if (task == TASK_NULL)
  return VM_MAP_NULL;

 if (!task->active) {
  task_unlock(task);
  return VM_MAP_NULL;
 }

 map = task->map;
 vm_map_reference_swap(map);
 task_unlock(task);
 return map;
}
