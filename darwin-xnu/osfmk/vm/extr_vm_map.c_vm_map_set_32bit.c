
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
struct TYPE_3__ {scalar_t__ max_offset; } ;


 int ARM_PMAP_MAX_OFFSET_DEVICE ;
 int FALSE ;
 scalar_t__ VM_MAX_ADDRESS ;
 scalar_t__ pmap_max_offset (int ,int ) ;

void
vm_map_set_32bit(vm_map_t map)
{



 map->max_offset = (vm_map_offset_t)VM_MAX_ADDRESS;

}
