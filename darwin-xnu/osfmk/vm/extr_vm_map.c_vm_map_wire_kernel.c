
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef int pmap_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int vm_map_wire_nested (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

kern_return_t
vm_map_wire_kernel(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
 vm_prot_t caller_prot,
 vm_tag_t tag,
 boolean_t user_wire)
{
 kern_return_t kret;

 kret = vm_map_wire_nested(map, start, end, caller_prot, tag,
      user_wire, (pmap_t)((void*)0), 0, ((void*)0));
 return kret;
}
