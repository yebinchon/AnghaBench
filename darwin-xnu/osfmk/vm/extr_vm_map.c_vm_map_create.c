
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef int pmap_t ;
typedef scalar_t__ boolean_t ;


 int VM_MAP_CREATE_PAGEABLE ;
 int vm_map_create_options (int ,int ,int ,int) ;

vm_map_t
vm_map_create(
 pmap_t pmap,
 vm_map_offset_t min,
 vm_map_offset_t max,
 boolean_t pageable)
{
 int options;

 options = 0;
 if (pageable) {
  options |= VM_MAP_CREATE_PAGEABLE;
 }
 return vm_map_create_options(pmap, min, max, options);
}
