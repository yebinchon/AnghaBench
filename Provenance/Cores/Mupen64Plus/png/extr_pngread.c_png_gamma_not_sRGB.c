
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_fixed_point ;


 int PNG_FP_1 ;
 int png_gamma_significant (int) ;

__attribute__((used)) static int
png_gamma_not_sRGB(png_fixed_point g)
{
   if (g < PNG_FP_1)
   {

      if (g == 0)
         return 0;

      return png_gamma_significant((g * 11 + 2)/5 );
   }

   return 1;
}
