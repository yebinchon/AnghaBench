
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const M_PI_2 ;
 float sinf (float) ;

__attribute__((used)) static void filter_fltp(void **d, const void **s,
                        int nb_samples, int channels,
                        float contrast)
{
    int n, c;

    for (c = 0; c < channels; c++) {
        const float *src = s[c];
        float *dst = d[c];

        for (n = 0; n < nb_samples; n++) {
            float d = src[n] * M_PI_2;

            dst[n] = sinf(d + contrast * sinf(d * 4));
        }
    }
}
