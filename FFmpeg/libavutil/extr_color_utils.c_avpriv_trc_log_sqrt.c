
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double log10 (double) ;

__attribute__((used)) static double avpriv_trc_log_sqrt(double Lc)
{

    return (0.00316227766 > Lc) ? 0.0 : 1.0 + log10(Lc) / 2.5;
}
