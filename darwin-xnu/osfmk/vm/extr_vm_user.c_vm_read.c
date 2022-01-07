
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_map_t ;
typedef int vm_map_size_t ;
typedef scalar_t__ vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ vm_address_t ;
typedef scalar_t__ pointer_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ VM_MAP_NULL ;
 int assert (int) ;
 scalar_t__ os_convert_overflow (scalar_t__,scalar_t__*) ;
 scalar_t__ vm_map_copyin (scalar_t__,int ,int ,int ,scalar_t__*) ;

kern_return_t
vm_read(
 vm_map_t map,
 vm_address_t addr,
 vm_size_t size,
 pointer_t *data,
 mach_msg_type_number_t *data_size)
{
 kern_return_t error;
 vm_map_copy_t ipc_address;

 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);

 mach_msg_type_number_t dsize;
 if (os_convert_overflow(size, &dsize)) {






  return KERN_INVALID_ARGUMENT;
 }

 error = vm_map_copyin(map,
   (vm_map_address_t)addr,
   (vm_map_size_t)size,
   FALSE,
   &ipc_address);

 if (KERN_SUCCESS == error) {
  *data = (pointer_t) ipc_address;
  *data_size = dsize;
  assert(*data_size == size);
 }
 return(error);
}
