
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* band_centre; } ;
typedef TYPE_1__ AudioFFTDeNoiseContext ;


 double M_LN10 ;
 double log (double) ;
 int lrint (double) ;

__attribute__((used)) static int get_band_noise(AudioFFTDeNoiseContext *s,
                          int band, double a,
                          double b, double c)
{
    double d1, d2, d3;

    d1 = a / s->band_centre[band];
    d1 = 10.0 * log(1.0 + d1 * d1) / M_LN10;
    d2 = b / s->band_centre[band];
    d2 = 10.0 * log(1.0 + d2 * d2) / M_LN10;
    d3 = s->band_centre[band] / c;
    d3 = 10.0 * log(1.0 + d3 * d3) / M_LN10;

    return lrint(-d1 + d2 - d3);
}
