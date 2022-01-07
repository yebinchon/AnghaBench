
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_15__ {int* linesize; int ** data; } ;
struct TYPE_14__ {TYPE_2__* priv; } ;
struct TYPE_13__ {int w; int h; int format; TYPE_5__* dst; } ;
struct TYPE_12__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_11__ {int nb_planes; int* height; int* width; int depth; int max; int planes; scalar_t__ sum; scalar_t__ max_sum; TYPE_6__* empty; int fill; int getsum; int maskfun; int linesize; } ;
struct TYPE_10__ {int depth; } ;
typedef TYPE_2__ MaskFunContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 void* AV_CEIL_RSHIFT (int,int) ;
 int ENOMEM ;
 int FFMIN (int ,int) ;
 int av_image_fill_linesizes (int ,int ,int) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 TYPE_6__* ff_get_video_buffer (TYPE_4__*,int,int) ;
 int getsum16 ;
 int getsum8 ;
 int maskfun16 ;
 int maskfun8 ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MaskFunContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int vsub, hsub, ret;

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    if ((ret = av_image_fill_linesizes(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;
    s->height[1] = s->height[2] = AV_CEIL_RSHIFT(inlink->h, vsub);
    s->height[0] = s->height[3] = inlink->h;
    s->width[1] = s->width[2] = AV_CEIL_RSHIFT(inlink->w, hsub);
    s->width[0] = s->width[3] = inlink->w;

    s->depth = desc->comp[0].depth;
    s->max = (1 << s->depth) - 1;
    s->fill = FFMIN(s->fill, s->max);

    if (s->depth == 8) {
        s->maskfun = maskfun8;
        s->getsum = getsum8;
    } else {
        s->maskfun = maskfun16;
        s->getsum = getsum16;
    }

    s->empty = ff_get_video_buffer(inlink, inlink->w, inlink->h);
    if (!s->empty)
        return AVERROR(ENOMEM);

    if (s->depth == 8) {
        for (int p = 0; p < s->nb_planes; p++) {
            uint8_t *dst = s->empty->data[p];

            for (int y = 0; y < s->height[p]; y++) {
                memset(dst, s->fill, s->width[p]);
                dst += s->empty->linesize[p];
            }
        }
    } else {
        for (int p = 0; p < s->nb_planes; p++) {
            uint16_t *dst = (uint16_t *)s->empty->data[p];

            for (int y = 0; y < s->height[p]; y++) {
                for (int x = 0; x < s->width[p]; x++)
                    dst[x] = s->fill;
                dst += s->empty->linesize[p] / 2;
            }
        }
    }

    s->max_sum = 0;
    for (int p = 0; p < s->nb_planes; p++) {
        if (!((1 << p) & s->planes))
            continue;
        s->max_sum += (uint64_t)s->sum * s->width[p] * s->height[p];
    }

    return 0;
}
