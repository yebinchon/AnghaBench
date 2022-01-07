
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ max_offset; } ;


 scalar_t__ VM_MAX_ADDRESS ;

boolean_t
vm_map_is_64bit(
  vm_map_t map)
{
 return map->max_offset > ((vm_map_offset_t)VM_MAX_ADDRESS);
}
