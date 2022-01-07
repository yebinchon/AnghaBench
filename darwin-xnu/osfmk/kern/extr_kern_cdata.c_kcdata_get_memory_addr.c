
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int mach_vm_address_t ;
typedef int kern_return_t ;
typedef int kcdata_descriptor_t ;


 int KCDATA_FLAGS_STRUCT_HAS_PADDING ;
 int KCDATA_FLAGS_STRUCT_PADDING_MASK ;
 int kcdata_calc_padding (int ) ;
 int kcdata_get_memory_addr_with_flavor (int ,int ,int ,int,int *) ;

kern_return_t
kcdata_get_memory_addr(kcdata_descriptor_t data, uint32_t type, uint32_t size, mach_vm_address_t * user_addr)
{

 uint64_t flags = (KCDATA_FLAGS_STRUCT_PADDING_MASK & kcdata_calc_padding(size)) | KCDATA_FLAGS_STRUCT_HAS_PADDING;
 return kcdata_get_memory_addr_with_flavor(data, type, size, flags, user_addr);
}
