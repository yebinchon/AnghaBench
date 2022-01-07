
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_4__ {int map; } ;


 scalar_t__ get_map_nentries (int ) ;
 int kernel_map ;
 TYPE_1__* kernel_task ;

uint64_t get_task_memory_region_count(task_t task)
{
 vm_map_t map;
 map = (task == kernel_task) ? kernel_map: task->map;
 return((uint64_t)get_map_nentries(map));
}
