
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* uarbc ;
typedef int png_uint_16 ;



__attribute__((used)) static int
max_window_bits(uarbc size, int ndigits)

{
   png_uint_16 cb;

   if (ndigits > 1)
      return 15;

   cb = size[0];

   if (cb > 16384) return 15;
   if (cb > 8192) return 14;
   if (cb > 4096) return 13;
   if (cb > 2048) return 12;
   if (cb > 1024) return 11;
   if (cb > 512) return 10;
   if (cb > 256) return 9;
   return 8;
}
