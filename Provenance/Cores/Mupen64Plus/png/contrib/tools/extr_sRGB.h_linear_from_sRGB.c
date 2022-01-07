
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double,double) ;

__attribute__((used)) static double
linear_from_sRGB(double s)
{
   if (s <= 0.04045)
      return s / 12.92;

   else
      return pow((s+0.055)/1.055, 2.4);
}
