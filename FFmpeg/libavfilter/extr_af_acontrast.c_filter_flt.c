
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const M_PI_2 ;
 float sinf (float) ;

__attribute__((used)) static void filter_flt(void **d, const void **s,
                       int nb_samples, int channels,
                       float contrast)
{
    const float *src = s[0];
    float *dst = d[0];
    int n, c;

    for (n = 0; n < nb_samples; n++) {
        for (c = 0; c < channels; c++) {
            float d = src[c] * M_PI_2;

            dst[c] = sinf(d + contrast * sinf(d * 4));
        }

        dst += c;
        src += c;
    }
}
