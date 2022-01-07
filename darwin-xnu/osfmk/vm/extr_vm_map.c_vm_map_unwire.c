
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef int pmap_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int vm_map_unwire_nested (int ,int ,int ,int ,int ,int ) ;

kern_return_t
vm_map_unwire(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
 boolean_t user_wire)
{
 return vm_map_unwire_nested(map, start, end,
        user_wire, (pmap_t)((void*)0), 0);
}
