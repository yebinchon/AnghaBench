
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 float const S16_SCALE ;
 int av_clip_int16 (int ) ;
 int lrintf (float const) ;

__attribute__((used)) static void quantize_c(int16_t *dst, const float *src, float *dither, int len)
{
    int i;
    for (i = 0; i < len; i++)
        dst[i] = av_clip_int16(lrintf(src[i] * S16_SCALE + dither[i]));
}
