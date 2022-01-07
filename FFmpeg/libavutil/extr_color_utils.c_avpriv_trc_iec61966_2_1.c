
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const pow (double,double) ;

__attribute__((used)) static double avpriv_trc_iec61966_2_1(double Lc)
{
    const double a = 1.055;
    const double b = 0.0031308;

    return (0.0 > Lc) ? 0.0
         : ( b > Lc) ? 12.92 * Lc
         : a * pow(Lc, 1.0 / 2.4) - (a - 1.0);
}
