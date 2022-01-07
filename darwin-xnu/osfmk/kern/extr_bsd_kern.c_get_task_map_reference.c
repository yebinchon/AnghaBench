
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* task_t ;
struct TYPE_5__ {int map; int active; } ;


 int VM_MAP_NULL ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int vm_map_reference_swap (int ) ;

vm_map_t get_task_map_reference(task_t t)
{
 vm_map_t m;

 if (t == ((void*)0))
  return VM_MAP_NULL;

 task_lock(t);
 if (!t->active) {
  task_unlock(t);
  return VM_MAP_NULL;
 }
 m = t->map;
 vm_map_reference_swap(m);
 task_unlock(t);
 return m;
}
