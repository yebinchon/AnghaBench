
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ ml_nofault_copy (int ,int ,scalar_t__) ;

__attribute__((used)) static kern_return_t
chudxnu_kern_read(void *dstaddr, vm_offset_t srcaddr, vm_size_t size)
{
 return ((ml_nofault_copy(srcaddr, (vm_offset_t)dstaddr, size) == size) ?
   KERN_SUCCESS : KERN_FAILURE);
}
