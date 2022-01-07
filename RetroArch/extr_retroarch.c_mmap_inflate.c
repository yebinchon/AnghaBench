
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t mmap_inflate(size_t addr, size_t mask)
{
    while (mask)
   {
      size_t tmp = (mask - 1) & ~mask;


      addr = ((addr & ~tmp) << 1) | (addr & tmp);
      mask = mask & (mask - 1);
   }

   return addr;
}
