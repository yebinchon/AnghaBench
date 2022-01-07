
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void sync_before_exec(const void *p, uint32_t len)
{
   uint32_t a = (uint32_t)p & ~0x1f;
   uint32_t b = ((uint32_t)p + len + 0x1f) & ~0x1f;

   for ( ; a < b; a += 32)
      asm("dcbst 0,%0 ; sync ; icbi 0,%0" : : "b"(a));

   asm("sync ; isync");
}
