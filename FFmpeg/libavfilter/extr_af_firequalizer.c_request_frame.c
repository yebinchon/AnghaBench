
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * inputs; TYPE_1__* priv; } ;
struct TYPE_11__ {int channels; TYPE_4__* src; } ;
struct TYPE_10__ {scalar_t__ nb_samples; int pts; int format; int extended_data; } ;
struct TYPE_9__ {scalar_t__ remaining; scalar_t__ frame_nsamples_max; int next_pts; } ;
typedef TYPE_1__ FIREqualizerContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int FFMIN (scalar_t__,scalar_t__) ;
 int av_samples_set_silence (int ,int ,scalar_t__,int ,int ) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,int ) ;
 int ff_request_frame (int ) ;
 int filter_frame (int ,TYPE_2__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    FIREqualizerContext *s= ctx->priv;
    int ret;

    ret = ff_request_frame(ctx->inputs[0]);
    if (ret == AVERROR_EOF && s->remaining > 0 && s->frame_nsamples_max > 0) {
        AVFrame *frame = ff_get_audio_buffer(outlink, FFMIN(s->remaining, s->frame_nsamples_max));

        if (!frame)
            return AVERROR(ENOMEM);

        av_samples_set_silence(frame->extended_data, 0, frame->nb_samples, outlink->channels, frame->format);
        frame->pts = s->next_pts;
        s->remaining -= frame->nb_samples;
        ret = filter_frame(ctx->inputs[0], frame);
    }

    return ret;
}
