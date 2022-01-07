
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


 int vm_fault_internal (int ,int ,int ,int ,int ,int,int ,int ,int *) ;

kern_return_t
vm_fault(
 vm_map_t map,
 vm_map_offset_t vaddr,
 vm_prot_t fault_type,
 boolean_t change_wiring,
 vm_tag_t wire_tag,
 int interruptible,
 pmap_t caller_pmap,
 vm_map_offset_t caller_pmap_addr)
{
 return vm_fault_internal(map, vaddr, fault_type, change_wiring, wire_tag,
     interruptible, caller_pmap, caller_pmap_addr,
     ((void*)0));
}
