
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_fixed_point ;


 double floor (int) ;
 scalar_t__ png_muldiv (int*,int,int,int) ;

png_fixed_point
png_reciprocal(png_fixed_point a)
{






   png_fixed_point res;

   if (png_muldiv(&res, 100000, 100000, a) != 0)
      return res;


   return 0;
}
