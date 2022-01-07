
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int hsub; int vsub; int h; int w; int src_linesize; int src; int dst_linesize; int dst; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_26__ {TYPE_1__* internal; TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_25__ {int h; int w; TYPE_6__* dst; } ;
struct TYPE_24__ {int * linesize; int * data; } ;
struct TYPE_23__ {scalar_t__ eval_mode; int nb_planes; int hsub; int vsub; int perspective; int * height; int * linesize; } ;
struct TYPE_21__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ PerspectiveContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ EVAL_MODE_FRAME ;
 int FFMIN (int ,int ) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int calc_persp_luts (TYPE_6__*,TYPE_5__*) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    PerspectiveContext *s = ctx->priv;
    AVFrame *out;
    int plane;
    int ret;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&frame);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, frame);

    if (s->eval_mode == EVAL_MODE_FRAME) {
        if ((ret = calc_persp_luts(ctx, inlink)) < 0) {
            av_frame_free(&out);
            return ret;
        }
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        int hsub = plane == 1 || plane == 2 ? s->hsub : 0;
        int vsub = plane == 1 || plane == 2 ? s->vsub : 0;
        ThreadData td = {.dst = out->data[plane],
                         .dst_linesize = out->linesize[plane],
                         .src = frame->data[plane],
                         .src_linesize = frame->linesize[plane],
                         .w = s->linesize[plane],
                         .h = s->height[plane],
                         .hsub = hsub,
                         .vsub = vsub };
        ctx->internal->execute(ctx, s->perspective, &td, ((void*)0), FFMIN(td.h, ff_filter_get_nb_threads(ctx)));
    }

    av_frame_free(&frame);
    return ff_filter_frame(outlink, out);
}
