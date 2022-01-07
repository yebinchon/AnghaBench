
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int format; TYPE_4__* dst; } ;
struct TYPE_9__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_8__ {size_t source; size_t dest; int vsub; int hsub; } ;
typedef TYPE_1__ ColorMatrixContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AV_LOG_VERBOSE ;
 int av_log (TYPE_4__*,int ,char*,int ,int ) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;
 int * color_modes ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ColorMatrixContext *color = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);

    color->hsub = pix_desc->log2_chroma_w;
    color->vsub = pix_desc->log2_chroma_h;

    av_log(ctx, AV_LOG_VERBOSE, "%s -> %s\n",
           color_modes[color->source], color_modes[color->dest]);

    return 0;
}
