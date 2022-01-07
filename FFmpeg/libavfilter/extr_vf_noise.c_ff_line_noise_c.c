
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;


 int av_clip_uint8 (int) ;

void ff_line_noise_c(uint8_t *dst, const uint8_t *src, const int8_t *noise,
                     int len, int shift)
{
    int i;

    noise += shift;
    for (i = 0; i < len; i++) {
        int v = src[i] + noise[i];

        dst[i] = av_clip_uint8(v);
    }
}
