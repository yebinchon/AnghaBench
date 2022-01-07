
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t ror32(uint32_t val, const unsigned int n)
{
 __asm__ volatile("rorl %%cl,%0" : "=r" (val) : "0" (val), "c" (n));
 return val;
}
