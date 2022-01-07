
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int uint64_t ;
typedef TYPE_2__* task_t ;
struct TYPE_7__ {TYPE_1__* map; } ;
struct TYPE_6__ {int pmap; } ;


 int PAGE_SIZE_64 ;
 TYPE_1__* kernel_map ;
 TYPE_2__* kernel_task ;
 scalar_t__ pmap_resident_count (int ) ;

uint64_t get_task_resident_size(task_t task)
{
 vm_map_t map;

 map = (task == kernel_task) ? kernel_map: task->map;
 return((uint64_t)pmap_resident_count(map->pmap) * PAGE_SIZE_64);
}
