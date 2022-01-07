
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int * out; int * in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_16__ {TYPE_1__* internal; TYPE_3__* priv; TYPE_4__** outputs; } ;
struct TYPE_15__ {int h; int w; TYPE_5__* dst; } ;
struct TYPE_14__ {int * planeheight; int deband; } ;
struct TYPE_12__ {int (* execute ) (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ DebandContext ;
typedef int AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN3 (int ,int ,int ) ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 int ff_filter_frame (TYPE_4__*,int *) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 int * ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int stub1 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    DebandContext *s = ctx->priv;
    AVFrame *out;
    ThreadData td;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    td.in = in; td.out = out;
    ctx->internal->execute(ctx, s->deband, &td, ((void*)0), FFMIN3(s->planeheight[1],
                                                             s->planeheight[2],
                                                             ff_filter_get_nb_threads(ctx)));

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
