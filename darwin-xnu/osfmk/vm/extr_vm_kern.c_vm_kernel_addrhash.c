
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int vm_kernel_addrhash_internal (int ,int *,int ) ;
 int vm_kernel_addrhash_salt ;

vm_offset_t
vm_kernel_addrhash(vm_offset_t addr)
{
 vm_offset_t hash_addr;
 vm_kernel_addrhash_internal(addr, &hash_addr, vm_kernel_addrhash_salt);
 return hash_addr;
}
