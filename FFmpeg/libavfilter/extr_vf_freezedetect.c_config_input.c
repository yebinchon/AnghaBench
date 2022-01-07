
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int h; int w; int format; TYPE_5__* dst; } ;
struct TYPE_10__ {int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_9__ {int bitdepth; int* width; int* height; int sad; } ;
struct TYPE_8__ {int depth; } ;
typedef TYPE_2__ FreezeDetectContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_image_get_linesize (int ,int ,int) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_scene_sad_get_fn (int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FreezeDetectContext *s = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);

    s->bitdepth = pix_desc->comp[0].depth;

    for (int plane = 0; plane < 4; plane++) {
        ptrdiff_t line_size = av_image_get_linesize(inlink->format, inlink->w, plane);
        s->width[plane] = line_size >> (s->bitdepth > 8);
        s->height[plane] = inlink->h >> ((plane == 1 || plane == 2) ? pix_desc->log2_chroma_h : 0);
    }

    s->sad = ff_scene_sad_get_fn(s->bitdepth == 8 ? 8 : 16);
    if (!s->sad)
        return AVERROR(EINVAL);

    return 0;
}
