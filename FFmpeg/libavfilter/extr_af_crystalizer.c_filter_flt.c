
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float av_clipf (float,int,int) ;

__attribute__((used)) static void filter_flt(void **d, void **p, const void **s,
                       int nb_samples, int channels,
                       float mult, int clip)
{
    const float *src = s[0];
    float *dst = d[0];
    float *prv = p[0];
    int n, c;

    for (n = 0; n < nb_samples; n++) {
        for (c = 0; c < channels; c++) {
            float current = src[c];

            dst[c] = current + (current - prv[c]) * mult;
            prv[c] = current;
            if (clip) {
                dst[c] = av_clipf(dst[c], -1, 1);
            }
        }

        dst += c;
        src += c;
    }
}
