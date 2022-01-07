
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_fixed_point ;


 double floor (double) ;
 scalar_t__ png_product2 (scalar_t__,scalar_t__) ;
 scalar_t__ png_reciprocal (scalar_t__) ;

png_fixed_point
png_reciprocal2(png_fixed_point a, png_fixed_point b)
{
   png_fixed_point res = png_product2(a, b);

   if (res != 0)
      return png_reciprocal(res);


   return 0;
}
