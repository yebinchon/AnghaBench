
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;



__attribute__((used)) static int
valid_chunktype(png_uint_32 chunktype)
{



   unsigned int i;

   for (i=0; i<4; ++i)
   {
      unsigned int c = chunktype & 0xffU;

      if (!((c >= 65U && c <= 90U) || (c >= 97U && c <= 122U)))
         return 0;

      chunktype >>= 8;
   }

   return 1;
}
