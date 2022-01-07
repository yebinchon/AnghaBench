
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int* png_const_bytep ;


 scalar_t__ memcmp (int*,int*,int) ;

__attribute__((used)) static int
pixel_cmp(png_const_bytep pa, png_const_bytep pb, png_uint_32 bit_width)
{

   if (memcmp(pa, pb, bit_width>>3) == 0)
   {
      png_uint_32 p;

      if ((bit_width & 7) == 0) return 0;


      p = pa[bit_width >> 3];
      p ^= pb[bit_width >> 3];

      if (p == 0) return 0;




      bit_width &= 7;
      p >>= 8-bit_width;

      if (p == 0) return 0;
   }
   {
      png_uint_32 where = 0;

      while (pa[where] == pb[where]) ++where;
      return 1+where;
   }
}
