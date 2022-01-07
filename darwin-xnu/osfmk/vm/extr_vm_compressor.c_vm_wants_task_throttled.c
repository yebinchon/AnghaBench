
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
struct TYPE_6__ {TYPE_1__* map; } ;
struct TYPE_5__ {int pmap; } ;


 scalar_t__ HARD_THROTTLE_LIMIT_REACHED () ;
 scalar_t__ VM_CONFIG_SWAP_IS_ACTIVE ;
 int c_segment_pages_compressed ;
 TYPE_2__* kernel_task ;
 scalar_t__ pmap_compressed (int ) ;
 scalar_t__ vm_compressor_low_on_space () ;

int
vm_wants_task_throttled(task_t task)
{
 if (task == kernel_task)
  return (0);

 if (VM_CONFIG_SWAP_IS_ACTIVE) {
  if ((vm_compressor_low_on_space() || HARD_THROTTLE_LIMIT_REACHED()) &&
      (unsigned int)pmap_compressed(task->map->pmap) > (c_segment_pages_compressed / 4))
   return (1);
 }
 return (0);
}
