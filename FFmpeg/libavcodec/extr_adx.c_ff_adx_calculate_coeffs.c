
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_PI ;
 double M_SQRT2 ;
 double cos (double) ;
 int lrintf (double) ;
 double sqrt (double) ;

void ff_adx_calculate_coeffs(int cutoff, int sample_rate, int bits, int *coeff)
{
    double a, b, c;

    a = M_SQRT2 - cos(2.0 * M_PI * cutoff / sample_rate);
    b = M_SQRT2 - 1.0;
    c = (a - sqrt((a + b) * (a - b))) / b;

    coeff[0] = lrintf(c * 2.0 * (1 << bits));
    coeff[1] = lrintf(-(c * c) * (1 << bits));
}
