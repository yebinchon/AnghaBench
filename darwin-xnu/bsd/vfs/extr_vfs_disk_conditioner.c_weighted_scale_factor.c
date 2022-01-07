
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
weighted_scale_factor(double scale)
{



 double x_m1 = scale - 1;
 return x_m1 * x_m1 * x_m1 + 1;
}
