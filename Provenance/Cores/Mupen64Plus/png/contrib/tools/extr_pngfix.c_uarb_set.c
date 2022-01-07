
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* uarb ;
typedef scalar_t__ png_uint_16 ;
typedef int png_alloc_size_t ;



__attribute__((used)) static int
uarb_set(uarb result, png_alloc_size_t val)



{
   int ndigits = 0;

   while (val > 0)
   {
      result[ndigits++] = (png_uint_16)(val & 0xffff);
      val >>= 16;
   }

   return ndigits;
}
