
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double YfromRGB (double,double,double) ;

__attribute__((used)) static double
YfromRGBint(int ir, int ig, int ib)
{
   double r = ir;
   double g = ig;
   double b = ib;
   return YfromRGB(r, g, b);
}
