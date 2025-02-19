
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int log2_chroma_h; int log2_chroma_w; TYPE_1__* comp; } ;
struct TYPE_10__ {TYPE_3__** inputs; TYPE_2__* priv; } ;
struct TYPE_9__ {void* h; void* w; int format; TYPE_4__* src; } ;
struct TYPE_8__ {int depth; int bpc; int max; int ath; int alpha; int bth; int beta; int gth; int gamma; int dth; int delta; scalar_t__ filter; void** planeheight; TYPE_6__* desc; void** planewidth; int deblockv; int deblockh; int nb_planes; } ;
struct TYPE_7__ {int depth; } ;
typedef TYPE_2__ DeblockContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR_BUG ;
 void* AV_CEIL_RSHIFT (void*,int ) ;
 scalar_t__ STRONG ;
 scalar_t__ WEAK ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_6__* av_pix_fmt_desc_get (int ) ;
 int deblockh16_strong ;
 int deblockh16_weak ;
 int deblockh8_strong ;
 int deblockh8_weak ;
 int deblockv16_strong ;
 int deblockv16_weak ;
 int deblockv8_strong ;
 int deblockv8_weak ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    DeblockContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];

    s->desc = av_pix_fmt_desc_get(outlink->format);
    if (!s->desc)
        return AVERROR_BUG;
    s->nb_planes = av_pix_fmt_count_planes(outlink->format);
    s->depth = s->desc->comp[0].depth;
    s->bpc = (s->depth + 7) / 8;
    s->max = (1 << s->depth) - 1;
    s->ath = s->alpha * s->max;
    s->bth = s->beta * s->max;
    s->gth = s->gamma * s->max;
    s->dth = s->delta * s->max;

    if (s->depth <= 8 && s->filter == WEAK) {
        s->deblockh = deblockh8_weak;
        s->deblockv = deblockv8_weak;
    } else if (s->depth >= 8 && s->filter == WEAK) {
        s->deblockh = deblockh16_weak;
        s->deblockv = deblockv16_weak;
    }
    if (s->depth <= 8 && s->filter == STRONG) {
        s->deblockh = deblockh8_strong;
        s->deblockv = deblockv8_strong;
    } else if (s->depth >= 8 && s->filter == STRONG) {
        s->deblockh = deblockh16_strong;
        s->deblockv = deblockv16_strong;
    }

    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, s->desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;

    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, s->desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    return 0;
}
