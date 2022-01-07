
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int func; int rgbtoyuv; } ;
typedef TYPE_2__ XBRContext ;
struct TYPE_21__ {int rgbtoyuv; TYPE_4__* out; TYPE_4__* in; } ;
typedef TYPE_3__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_2__* priv; TYPE_5__** outputs; } ;
struct TYPE_23__ {int h; int w; TYPE_6__* dst; } ;
struct TYPE_22__ {int height; int width; } ;
struct TYPE_19__ {int (* execute ) (TYPE_6__*,int ,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int stub1 (TYPE_6__*,int ,TYPE_3__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    XBRContext *s = ctx->priv;
    ThreadData td;

    AVFrame *out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }

    av_frame_copy_props(out, in);

    td.in = in;
    td.out = out;
    td.rgbtoyuv = s->rgbtoyuv;
    ctx->internal->execute(ctx, s->func, &td, ((void*)0), FFMIN(inlink->h, ff_filter_get_nb_threads(ctx)));

    out->width = outlink->w;
    out->height = outlink->h;

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
