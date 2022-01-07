
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef scalar_t__ user_size_t ;
typedef scalar_t__ user_addr_t ;
typedef int kern_return_t ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int FALSE ;




 int VM_KERN_MEMORY_BSD ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int current_map () ;
 int vm_map_page_mask (int ) ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;
 int vm_map_wire_kernel (int ,int ,int ,int,int ,int ) ;

int
vslock(
 user_addr_t addr,
 user_size_t len)
{
 kern_return_t kret;
 vm_map_t map;

 map = current_map();
 kret = vm_map_wire_kernel(map,
      vm_map_trunc_page(addr,
          vm_map_page_mask(map)),
      vm_map_round_page(addr+len,
          vm_map_page_mask(map)),
      VM_PROT_READ | VM_PROT_WRITE, VM_KERN_MEMORY_BSD,
      FALSE);

 switch (kret) {
 case 128:
  return (0);
 case 131:
 case 130:
  return (ENOMEM);
 case 129:
  return (EACCES);
 default:
  return (EINVAL);
 }
}
