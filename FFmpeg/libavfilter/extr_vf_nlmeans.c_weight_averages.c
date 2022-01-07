
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint8_t ;
struct weighted_avg {float total_weight; float sum; } ;
typedef int ptrdiff_t ;


 float av_clip_uint8 (float) ;

__attribute__((used)) static void weight_averages(uint8_t *dst, ptrdiff_t dst_linesize,
                            const uint8_t *src, ptrdiff_t src_linesize,
                            struct weighted_avg *wa, ptrdiff_t wa_linesize,
                            int w, int h)
{
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {

            wa[x].total_weight += 1.f;
            wa[x].sum += 1.f * src[x];
            dst[x] = av_clip_uint8(wa[x].sum / wa[x].total_weight + 0.5f);
        }
        dst += dst_linesize;
        src += src_linesize;
        wa += wa_linesize;
    }
}
