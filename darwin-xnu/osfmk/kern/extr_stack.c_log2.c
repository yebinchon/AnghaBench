
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;



__attribute__((used)) static inline int
log2(vm_offset_t size)
{
 int result;
 for (result = 0; size > 0; result++)
  size >>= 1;
 return result;
}
