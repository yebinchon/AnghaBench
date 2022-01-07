
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const pow (double,double) ;

__attribute__((used)) static double avpriv_trc_smpte240M(double Lc)
{
    const double a = 1.1115;
    const double b = 0.0228;

    return (0.0 > Lc) ? 0.0
         : ( b > Lc) ? 4.000 * Lc
         : a * pow(Lc, 0.45) - (a - 1.0);
}
