
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct kcdata_descriptor {int dummy; } ;
typedef void* mach_vm_address_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_7__ {unsigned int kcd_flags; unsigned int kcd_length; void* kcd_addr_end; void* kcd_addr_begin; } ;


 unsigned int KCFLAG_USE_COPYOUT ;
 unsigned int KCFLAG_USE_MEMCOPY ;
 scalar_t__ KERN_SUCCESS ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* kalloc (int) ;
 scalar_t__ kcdata_get_memory_addr (TYPE_1__*,unsigned int,int ,void**) ;
 int kcdata_memory_destroy (TYPE_1__*) ;

kcdata_descriptor_t kcdata_memory_alloc_init(mach_vm_address_t buffer_addr_p, unsigned data_type, unsigned size, unsigned flags)
{
 kcdata_descriptor_t data = ((void*)0);
 mach_vm_address_t user_addr = 0;

 data = kalloc(sizeof(struct kcdata_descriptor));
 if (data == ((void*)0)) {
  return ((void*)0);
 }
 bzero(data, sizeof(struct kcdata_descriptor));
 data->kcd_addr_begin = buffer_addr_p;
 data->kcd_addr_end = buffer_addr_p;
 data->kcd_flags = (flags & KCFLAG_USE_COPYOUT)? KCFLAG_USE_COPYOUT : KCFLAG_USE_MEMCOPY;
 data->kcd_length = size;


 if (KERN_SUCCESS != kcdata_get_memory_addr(data, data_type, 0, &user_addr)){
  kcdata_memory_destroy(data);
  return ((void*)0);
 }

 return data;
}
