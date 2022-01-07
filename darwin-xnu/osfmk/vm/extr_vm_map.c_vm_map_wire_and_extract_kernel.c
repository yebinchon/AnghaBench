
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ VM_MAP_PAGE_SIZE (int ) ;
 scalar_t__ vm_map_wire_nested (int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,scalar_t__*) ;

kern_return_t
vm_map_wire_and_extract_kernel(
 vm_map_t map,
 vm_map_offset_t start,
 vm_prot_t caller_prot,
 vm_tag_t tag,
 boolean_t user_wire,
 ppnum_t *physpage_p)
{
 kern_return_t kret;

 kret = vm_map_wire_nested(map,
      start,
      start+VM_MAP_PAGE_SIZE(map),
      caller_prot,
      tag,
      user_wire,
      (pmap_t)((void*)0),
      0,
      physpage_p);
 if (kret != KERN_SUCCESS &&
     physpage_p != ((void*)0)) {
  *physpage_p = 0;
 }
 return kret;
}
