
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kern_return_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_3__ {int kcd_flags; } ;


 int KCFLAG_USE_COPYOUT ;
 int KERN_NO_ACCESS ;
 int KERN_SUCCESS ;
 scalar_t__ copyout (void const*,scalar_t__,int ) ;
 int memcpy (void*,void const*,int ) ;

kern_return_t kcdata_memcpy(kcdata_descriptor_t data, mach_vm_address_t dst_addr, const void *src_addr, uint32_t size)
{
 if (data->kcd_flags & KCFLAG_USE_COPYOUT) {
  if (copyout(src_addr, dst_addr, size))
   return KERN_NO_ACCESS;
 } else {
  memcpy((void *)dst_addr, src_addr, size);
 }
 return KERN_SUCCESS;
}
