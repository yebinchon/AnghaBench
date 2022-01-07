
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int w; int h; int format; TYPE_1__* dst; } ;
struct TYPE_11__ {int log2_chroma_h; int log2_chroma_w; TYPE_2__* comp; } ;
struct TYPE_10__ {int depth; int sigmaR; int* planewidth; int* planeheight; void* line_factor_a; void* slice_factor_a; void* map_factor_b; void* map_factor_a; void* img_temp; void* img_out_f; void* line_factor_b; void* slice_factor_b; int nb_planes; int * range_table; } ;
struct TYPE_9__ {int depth; } ;
struct TYPE_8__ {TYPE_3__* priv; } ;
typedef TYPE_3__ BilateralContext ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;


 int AVERROR (int ) ;
 void* AV_CEIL_RSHIFT (int,int ) ;
 int ENOMEM ;
 void* av_calloc (int,int) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int expf (int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    BilateralContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    float inv_sigma_range;

    s->depth = desc->comp[0].depth;
    inv_sigma_range = 1.0f / (s->sigmaR * ((1 << s->depth) - 1));


    for (int i = 0; i < (1 << s->depth); i++)
        s->range_table[i] = expf(-i * inv_sigma_range);

    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    s->img_out_f = av_calloc(inlink->w * inlink->h, sizeof(float));
    s->img_temp = av_calloc(inlink->w * inlink->h, sizeof(float));
    s->map_factor_a = av_calloc(inlink->w * inlink->h, sizeof(float));
    s->map_factor_b = av_calloc(inlink->w * inlink->h, sizeof(float));
    s->slice_factor_a = av_calloc(inlink->w, sizeof(float));
    s->slice_factor_b = av_calloc(inlink->w, sizeof(float));
    s->line_factor_a = av_calloc(inlink->w, sizeof(float));
    s->line_factor_b = av_calloc(inlink->w, sizeof(float));

    if (!s->img_out_f ||
        !s->img_temp ||
        !s->map_factor_a ||
        !s->map_factor_b ||
        !s->slice_factor_a ||
        !s->slice_factor_a ||
        !s->line_factor_a ||
        !s->line_factor_a)
        return AVERROR(ENOMEM);

    return 0;
}
