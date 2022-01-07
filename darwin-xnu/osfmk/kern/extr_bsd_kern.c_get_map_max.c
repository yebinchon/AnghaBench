
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_offset_t ;


 int vm_map_max (int ) ;

vm_map_offset_t
get_map_max(
 vm_map_t map)
{
 return(vm_map_max(map));
}
