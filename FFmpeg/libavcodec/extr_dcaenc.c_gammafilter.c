
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double* erb ;
 double* fc ;
 int log10 (double) ;

__attribute__((used)) static double gammafilter(int i, double f)
{
    double h = (f - fc[i]) / erb[i];

    h = 1 + h * h;
    h = 1 / (h * h);
    return 20 * log10(h);
}
