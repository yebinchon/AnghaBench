
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int maskedclamp; } ;
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {void* w; void* h; int format; TYPE_5__* dst; } ;
struct TYPE_11__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {int depth; TYPE_6__ dsp; void* overshoot; void* undershoot; void** width; void** height; int linesize; int nb_planes; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ MaskedClampContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 scalar_t__ ARCH_X86 ;
 void* AV_CEIL_RSHIFT (void*,int) ;
 void* FFMIN (void*,int) ;
 int av_image_fill_linesizes (int ,int ,void*) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_maskedclamp_init_x86 (TYPE_6__*,int) ;
 int maskedclamp16 ;
 int maskedclamp8 ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MaskedClampContext *s = ctx->priv;
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
    s->undershoot = FFMIN(s->undershoot, (1 << s->depth) - 1);
    s->overshoot = FFMIN(s->overshoot, (1 << s->depth) - 1);

    if (s->depth <= 8)
        s->dsp.maskedclamp = maskedclamp8;
    else
        s->dsp.maskedclamp = maskedclamp16;

    if (ARCH_X86)
        ff_maskedclamp_init_x86(&s->dsp, s->depth);

    return 0;
}
