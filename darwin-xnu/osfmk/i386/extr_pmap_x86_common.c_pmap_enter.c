
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_map_offset_t ;
typedef int ppnum_t ;
typedef int pmap_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int PMAP_EXPAND_OPTIONS_NONE ;
 int pmap_enter_options (int ,int ,int ,int ,int ,unsigned int,int ,int ,int *) ;

kern_return_t
pmap_enter(
 pmap_t pmap,
  vm_map_offset_t vaddr,
 ppnum_t pn,
 vm_prot_t prot,
 vm_prot_t fault_type,
 unsigned int flags,
 boolean_t wired)
{
 return pmap_enter_options(pmap, vaddr, pn, prot, fault_type, flags, wired, PMAP_EXPAND_OPTIONS_NONE, ((void*)0));
}
