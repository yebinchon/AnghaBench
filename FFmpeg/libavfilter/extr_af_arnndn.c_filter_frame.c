
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_20__ {TYPE_1__* internal; TYPE_4__** outputs; } ;
struct TYPE_19__ {int channels; TYPE_5__* dst; } ;
struct TYPE_18__ {int pts; } ;
struct TYPE_16__ {int (* execute ) (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int FRAME_SIZE ;
 int av_frame_free (TYPE_3__**) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,int ) ;
 int rnnoise_channels ;
 int stub1 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = ((void*)0);
    ThreadData td;

    out = ff_get_audio_buffer(outlink, FRAME_SIZE);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    out->pts = in->pts;

    td.in = in; td.out = out;
    ctx->internal->execute(ctx, rnnoise_channels, &td, ((void*)0), FFMIN(outlink->channels,
                                                                   ff_filter_get_nb_threads(ctx)));

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
