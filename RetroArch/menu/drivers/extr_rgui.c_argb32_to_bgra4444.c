
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned int uint16_t ;



__attribute__((used)) static uint16_t argb32_to_bgra4444(uint32_t col)
{
   unsigned a = ((col >> 24) & 0xff) >> 4;
   unsigned r = ((col >> 16) & 0xff) >> 4;
   unsigned g = ((col >> 8) & 0xff) >> 4;
   unsigned b = ((col & 0xff) ) >> 4;
   return (b << 12) | (g << 8) | (r << 4) | a;
}
