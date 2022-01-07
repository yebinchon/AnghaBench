
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef float uint16_t ;
typedef int ptrdiff_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int depth; } ;
typedef TYPE_1__ DeflickerContext ;
typedef TYPE_2__ AVFilterContext ;


 float av_clip (float const,int ,int const) ;

__attribute__((used)) static int deflicker16(AVFilterContext *ctx,
                       const uint8_t *ssrc, ptrdiff_t src_linesize,
                       uint8_t *ddst, ptrdiff_t dst_linesize,
                       int w, int h, float f)
{
    DeflickerContext *s = ctx->priv;
    const uint16_t *src = (const uint16_t *)ssrc;
    uint16_t *dst = (uint16_t *)ddst;
    const int max = (1 << s->depth) - 1;
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            dst[x] = av_clip(src[x] * f, 0, max);
        }

        dst += dst_linesize / 2;
        src += src_linesize / 2;
    }

    return 0;
}
