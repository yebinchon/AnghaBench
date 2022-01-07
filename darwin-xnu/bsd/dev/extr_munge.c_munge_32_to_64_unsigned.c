
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static inline __attribute__((always_inline)) void
munge_32_to_64_unsigned(volatile uint64_t *dest, volatile uint32_t *src, int count)
{
 int i;

 for (i = count - 1; i >= 0; i--) {
  dest[i] = src[i];
 }
}
