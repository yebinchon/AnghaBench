
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;



__attribute__((used)) static unsigned int
bits_of(png_uint_32 num)
{

   unsigned int b = 0;

   if (num & 0xffff0000U) b += 16U, num >>= 16;
   if (num & 0xff00U) b += 8U, num >>= 8;
   if (num & 0xf0U) b += 4U, num >>= 4;
   if (num & 0xcU) b += 2U, num >>= 2;
   if (num & 0x2U) ++b, num >>= 1;
   if (num) ++b;

   return b;
}
