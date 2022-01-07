
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_address_t ;


 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int pmap_map_high_window_bd (int ,int ,int) ;

vm_map_address_t
ml_map_high_window(
 vm_offset_t phys_addr,
 vm_size_t len)
{
 return pmap_map_high_window_bd(phys_addr, len, VM_PROT_READ | VM_PROT_WRITE);
}
