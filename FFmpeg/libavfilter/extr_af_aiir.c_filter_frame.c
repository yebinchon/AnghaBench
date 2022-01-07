
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_23__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_28__ {TYPE_6__* out; TYPE_6__* in; } ;
typedef TYPE_4__ ThreadData ;
struct TYPE_32__ {TYPE_3__** inputs; TYPE_7__** outputs; TYPE_1__* internal; TYPE_5__* priv; } ;
struct TYPE_31__ {int channels; int time_base; TYPE_8__* dst; } ;
struct TYPE_30__ {int pts; int nb_samples; } ;
struct TYPE_29__ {TYPE_23__* video; scalar_t__ response; TYPE_2__* iir; int iir_channel; } ;
struct TYPE_27__ {int time_base; } ;
struct TYPE_26__ {scalar_t__ clippings; } ;
struct TYPE_25__ {scalar_t__ pts; } ;
struct TYPE_24__ {int (* execute ) (TYPE_8__*,int ,TYPE_4__*,int *,int) ;} ;
typedef TYPE_5__ AudioIIRContext ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 TYPE_6__* av_frame_clone (TYPE_23__*) ;
 int av_frame_copy_props (TYPE_6__*,TYPE_6__*) ;
 int av_frame_free (TYPE_6__**) ;
 scalar_t__ av_frame_is_writable (TYPE_6__*) ;
 int av_log (TYPE_8__*,int ,char*,int,scalar_t__) ;
 scalar_t__ av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_7__*,TYPE_6__*) ;
 TYPE_6__* ff_get_audio_buffer (TYPE_7__*,int ) ;
 int stub1 (TYPE_8__*,int ,TYPE_4__*,int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AudioIIRContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;
    int ch, ret;

    if (av_frame_is_writable(in)) {
        out = in;
    } else {
        out = ff_get_audio_buffer(outlink, in->nb_samples);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    td.in = in;
    td.out = out;
    ctx->internal->execute(ctx, s->iir_channel, &td, ((void*)0), outlink->channels);

    for (ch = 0; ch < outlink->channels; ch++) {
        if (s->iir[ch].clippings > 0)
            av_log(ctx, AV_LOG_WARNING, "Channel %d clipping %d times. Please reduce gain.\n",
                   ch, s->iir[ch].clippings);
        s->iir[ch].clippings = 0;
    }

    if (in != out)
        av_frame_free(&in);

    if (s->response) {
        AVFilterLink *outlink = ctx->outputs[1];
        int64_t old_pts = s->video->pts;
        int64_t new_pts = av_rescale_q(out->pts, ctx->inputs[0]->time_base, outlink->time_base);

        if (new_pts > old_pts) {
            s->video->pts = new_pts;
            ret = ff_filter_frame(outlink, av_frame_clone(s->video));
            if (ret < 0)
                return ret;
        }
    }

    return ff_filter_frame(outlink, out);
}
