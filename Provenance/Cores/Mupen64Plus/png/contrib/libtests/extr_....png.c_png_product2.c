
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_fixed_point ;


 double floor (double) ;
 scalar_t__ png_muldiv (int*,int,int,int) ;

__attribute__((used)) static png_fixed_point
png_product2(png_fixed_point a, png_fixed_point b)
{
   png_fixed_point res;

   if (png_muldiv(&res, a, b, 100000) != 0)
      return res;


   return 0;
}
