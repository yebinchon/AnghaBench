
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kern_return_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_3__ {int kcd_flags; } ;


 int KCFLAG_USE_COPYOUT ;
 int KERN_NO_ACCESS ;
 int KERN_SUCCESS ;
 scalar_t__ MIN (scalar_t__,int) ;
 int bzero (void*,scalar_t__) ;
 int copyout (int **,scalar_t__,scalar_t__) ;

kern_return_t
kcdata_bzero(kcdata_descriptor_t data, mach_vm_address_t dst_addr, uint32_t size)
{
 kern_return_t kr = KERN_SUCCESS;
 if (data->kcd_flags & KCFLAG_USE_COPYOUT) {
  uint8_t zeros[16] = {};
  while (size) {
   uint32_t block_size = MIN(size, 16);
   kr = copyout(&zeros, dst_addr, block_size);
   if (kr)
    return KERN_NO_ACCESS;
   size -= block_size;
  }
  return KERN_SUCCESS;
 } else {
  bzero((void*)dst_addr, size);
  return KERN_SUCCESS;
 }
}
