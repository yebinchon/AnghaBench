
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const M_PI_2 ;
 float sin (double) ;

__attribute__((used)) static void filter_dbl(void **d, const void **s,
                       int nb_samples, int channels,
                       float contrast)
{
    const double *src = s[0];
    double *dst = d[0];
    int n, c;

    for (n = 0; n < nb_samples; n++) {
        for (c = 0; c < channels; c++) {
            double d = src[c] * M_PI_2;

            dst[c] = sin(d + contrast * sin(d * 4));
        }

        dst += c;
        src += c;
    }
}
