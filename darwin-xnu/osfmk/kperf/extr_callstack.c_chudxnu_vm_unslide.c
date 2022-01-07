
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int VM_KERNEL_UNSLIDE (int ) ;

__attribute__((used)) static inline uint64_t
chudxnu_vm_unslide( uint64_t ptr, int kaddr )
{
 if (!kaddr)
  return ptr;

 return VM_KERNEL_UNSLIDE(ptr);
}
