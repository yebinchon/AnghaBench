
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double BT709_alpha ;
 double BT709_beta ;
 double const pow (double,double) ;

__attribute__((used)) static double avpriv_trc_bt709(double Lc)
{
    const double a = BT709_alpha;
    const double b = BT709_beta;

    return (0.0 > Lc) ? 0.0
         : ( b > Lc) ? 4.500 * Lc
         : a * pow(Lc, 0.45) - (a - 1.0);
}
