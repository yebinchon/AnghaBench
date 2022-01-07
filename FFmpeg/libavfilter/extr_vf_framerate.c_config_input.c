
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {int h; int time_base; int w; int format; TYPE_5__* dst; } ;
struct TYPE_11__ {int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {int vsub; int* height; int bitdepth; int srce_time_base; int sad; int * line_size; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ FrameRateContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_image_get_linesize (int ,int ,int) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_framerate_init (TYPE_2__*) ;
 int ff_scene_sad_get_fn (int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FrameRateContext *s = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);
    int plane;

    s->vsub = pix_desc->log2_chroma_h;
    for (plane = 0; plane < 4; plane++) {
        s->line_size[plane] = av_image_get_linesize(inlink->format, inlink->w, plane);
        s->height[plane] = inlink->h >> ((plane == 1 || plane == 2) ? s->vsub : 0);
    }

    s->bitdepth = pix_desc->comp[0].depth;

    s->sad = ff_scene_sad_get_fn(s->bitdepth == 8 ? 8 : 16);
    if (!s->sad)
        return AVERROR(EINVAL);

    s->srce_time_base = inlink->time_base;

    ff_framerate_init(s);

    return 0;
}
