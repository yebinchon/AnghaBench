
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int time_base; int h; int w; int format; TYPE_4__* src; } ;
struct TYPE_8__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_7__ {int frame_rate; int vsub; int hsub; } ;
typedef TYPE_1__ MPTestContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int HEIGHT ;
 int WIDTH ;
 int av_inv_q (int ) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_props(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    MPTestContext *test = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(outlink->format);

    test->hsub = pix_desc->log2_chroma_w;
    test->vsub = pix_desc->log2_chroma_h;

    outlink->w = WIDTH;
    outlink->h = HEIGHT;
    outlink->time_base = av_inv_q(test->frame_rate);

    return 0;
}
