
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ buf_kernel_addrperm ;

vm_offset_t
buf_kernel_addrperm_addr(void * addr)
{
 if ((vm_offset_t)addr == 0)
  return 0;
 else
  return ((vm_offset_t)addr + buf_kernel_addrperm);
}
