
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t mmap_add_bits_down(size_t n)
{
   n |= n >> 1;
   n |= n >> 2;
   n |= n >> 4;
   n |= n >> 8;
   n |= n >> 16;


   if (sizeof(size_t) > 4)
      n |= n >> 16 >> 16;

   return n;
}
