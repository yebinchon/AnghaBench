
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef scalar_t__ user_size_t ;
typedef scalar_t__ user_addr_t ;


 int B_READ ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int current_map () ;
 int vm_map_check_protection (int ,int ,int ,int ) ;
 int vm_map_page_mask (int ) ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;

int
useracc(
 user_addr_t addr,
 user_size_t len,
 int prot)
{
 vm_map_t map;

 map = current_map();
 return (vm_map_check_protection(
   map,
   vm_map_trunc_page(addr,
       vm_map_page_mask(map)),
   vm_map_round_page(addr+len,
       vm_map_page_mask(map)),
   prot == B_READ ? VM_PROT_READ : VM_PROT_WRITE));
}
