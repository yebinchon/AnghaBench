
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double,double) ;

__attribute__((used)) static double avpriv_trc_gamma22(double Lc)
{
    return (0.0 > Lc) ? 0.0 : pow(Lc, 1.0/ 2.2);
}
