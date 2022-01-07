
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ nb_out_samples; int pad; } ;
struct TYPE_13__ {TYPE_3__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_12__ {scalar_t__ nb_samples; int format; int channels; int extended_data; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;
typedef TYPE_3__ ASNSContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS (int *,int *) ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_free (TYPE_1__**) ;
 int av_samples_copy (int ,int ,int ,int ,scalar_t__,int ,int ) ;
 int av_samples_set_silence (int ,scalar_t__,scalar_t__,int ,int ) ;
 int ff_filter_frame (int *,TYPE_1__*) ;
 int ff_filter_set_ready (TYPE_2__*,int) ;
 TYPE_1__* ff_get_audio_buffer (int *,scalar_t__) ;
 int ff_inlink_consume_samples (int *,scalar_t__,scalar_t__,TYPE_1__**) ;
 scalar_t__ ff_inlink_queued_samples (int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    ASNSContext *s = ctx->priv;
    AVFrame *frame = ((void*)0), *pad_frame;
    int ret;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    ret = ff_inlink_consume_samples(inlink, s->nb_out_samples, s->nb_out_samples, &frame);
    if (ret < 0)
        return ret;

    if (ret > 0) {
        if (!s->pad || frame->nb_samples == s->nb_out_samples) {
            ret = ff_filter_frame(outlink, frame);
            if (ff_inlink_queued_samples(inlink) >= s->nb_out_samples)
                ff_filter_set_ready(ctx, 100);
            return ret;
        }

        pad_frame = ff_get_audio_buffer(outlink, s->nb_out_samples);
        if (!pad_frame) {
            av_frame_free(&frame);
            return AVERROR(ENOMEM);
        }

        ret = av_frame_copy_props(pad_frame, frame);
        if (ret < 0) {
            av_frame_free(&pad_frame);
            av_frame_free(&frame);
            return ret;
        }

        av_samples_copy(pad_frame->extended_data, frame->extended_data,
                        0, 0, frame->nb_samples, frame->channels, frame->format);
        av_samples_set_silence(pad_frame->extended_data, frame->nb_samples,
                               s->nb_out_samples - frame->nb_samples, frame->channels,
                               frame->format);
        av_frame_free(&frame);
        return ff_filter_frame(outlink, pad_frame);
    }

    FF_FILTER_FORWARD_STATUS(inlink, outlink);
    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
