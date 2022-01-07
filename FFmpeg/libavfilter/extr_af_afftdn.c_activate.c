
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_8__ {scalar_t__ pts; int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_7__ {scalar_t__ pts; scalar_t__ window_length; int fifo; } ;
typedef TYPE_1__ AudioFFTDeNoiseContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS (int *,int *) ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 scalar_t__ av_audio_fifo_size (int ) ;
 int av_audio_fifo_write (int ,void**,int ) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_inlink_consume_frame (int *,TYPE_2__**) ;
 int ff_inlink_request_frame (int *) ;
 scalar_t__ ff_outlink_frame_wanted (int *) ;
 int output_frame (int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AudioFFTDeNoiseContext *s = ctx->priv;
    AVFrame *frame = ((void*)0);
    int ret;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    ret = ff_inlink_consume_frame(inlink, &frame);
    if (ret < 0)
        return ret;

    if (ret > 0) {
        if (s->pts == AV_NOPTS_VALUE)
            s->pts = frame->pts;

        ret = av_audio_fifo_write(s->fifo, (void **)frame->extended_data, frame->nb_samples);
        av_frame_free(&frame);
        if (ret < 0)
            return ret;
    }

    if (av_audio_fifo_size(s->fifo) >= s->window_length)
        return output_frame(inlink);

    FF_FILTER_FORWARD_STATUS(inlink, outlink);
    if (ff_outlink_frame_wanted(outlink) &&
        av_audio_fifo_size(s->fifo) < s->window_length) {
        ff_inlink_request_frame(inlink);
        return 0;
    }

    return FFERROR_NOT_READY;
}
