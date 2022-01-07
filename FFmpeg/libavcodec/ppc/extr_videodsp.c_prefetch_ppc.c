
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void prefetch_ppc(uint8_t *mem, ptrdiff_t stride, int h)
{
    register const uint8_t *p = mem;
    do {
        __asm__ volatile ("dcbt 0,%0" : : "r" (p));
        p += stride;
    } while(--h);
}
