
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {void* w; void* h; int format; TYPE_4__* dst; } ;
struct TYPE_8__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_7__ {void*** width; void*** height; int nb_planes; } ;
typedef TYPE_1__ MidEqualizerContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 void* AV_CEIL_RSHIFT (void*,int) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_input1(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MidEqualizerContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int vsub, hsub;

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;

    s->height[1][0] = s->height[1][3] = inlink->h;
    s->width[1][0] = s->width[1][3] = inlink->w;
    s->height[1][1] = s->height[1][2] = AV_CEIL_RSHIFT(inlink->h, vsub);
    s->width[1][1] = s->width[1][2] = AV_CEIL_RSHIFT(inlink->w, hsub);

    return 0;
}
