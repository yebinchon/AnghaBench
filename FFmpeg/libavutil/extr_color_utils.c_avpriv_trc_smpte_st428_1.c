
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double,double) ;

__attribute__((used)) static double avpriv_trc_smpte_st428_1(double Lc)
{
    return (0.0 > Lc) ? 0.0
         : pow(48.0 * Lc / 52.37, 1.0 / 2.6);
}
