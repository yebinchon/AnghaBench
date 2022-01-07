
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_map_t ;
typedef int vm_map_address_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ADDRESS ;
 int KERN_SUCCESS ;
 scalar_t__ copyin (int ,void*,int ) ;
 scalar_t__ current_map () ;
 int vm_map_deallocate (scalar_t__) ;
 int vm_map_reference (scalar_t__) ;
 scalar_t__ vm_map_switch (scalar_t__) ;

kern_return_t
vm_map_read_user(
 vm_map_t map,
 vm_map_address_t src_addr,
 void *dst_p,
 vm_size_t size)
{
 kern_return_t kr = KERN_SUCCESS;

 if(current_map() == map) {
  if (copyin(src_addr, dst_p, size)) {
   kr = KERN_INVALID_ADDRESS;
  }
 } else {
  vm_map_t oldmap;




  vm_map_reference(map);
  oldmap = vm_map_switch(map);
  if (copyin(src_addr, dst_p, size)) {
   kr = KERN_INVALID_ADDRESS;
  }
  vm_map_switch(oldmap);
  vm_map_deallocate(map);
 }
 return kr;
}
