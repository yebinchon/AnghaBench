
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t next_pow2(uint32_t x)
{
   x--;
   x = (x >> 1) | x;
   x = (x >> 2) | x;
   x = (x >> 4) | x;
   x = (x >> 8) | x;
   x = (x >> 16) | x;
   return ++x;
}
