
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int mach_vm_address_t ;
typedef int kern_return_t ;
typedef int kcdata_descriptor_t ;


 int KCDATA_TYPE_ARRAY_PAD0 ;
 int kcdata_calc_padding (int) ;
 int kcdata_get_memory_addr_with_flavor (int ,int,int,int,int *) ;

kern_return_t kcdata_get_memory_addr_for_array(
  kcdata_descriptor_t data,
  uint32_t type_of_element,
  uint32_t size_of_element,
  uint32_t count,
  mach_vm_address_t *user_addr)
{


 uint64_t flags = type_of_element;
 flags = (flags << 32) | count;
 uint32_t total_size = count * size_of_element;
 uint32_t pad = kcdata_calc_padding(total_size);

 return kcdata_get_memory_addr_with_flavor(data, KCDATA_TYPE_ARRAY_PAD0 | pad, total_size, flags, user_addr);
}
