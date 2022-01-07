
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double max_input ;
 double sRGB_from_linear (double) ;

double
fsRGB(double l)
{
   return sRGB_from_linear(l/max_input);
}
