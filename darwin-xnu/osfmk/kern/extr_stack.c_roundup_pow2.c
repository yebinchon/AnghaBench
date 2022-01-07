
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long vm_offset_t ;


 int log2 (unsigned long) ;

__attribute__((used)) static inline vm_offset_t
roundup_pow2(vm_offset_t size)
{
 return 1UL << (log2(size - 1) + 1);
}
