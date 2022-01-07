
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_8__ {scalar_t__ pts; int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_7__ {scalar_t__ win_size; scalar_t__ pts; int fifo; } ;
typedef TYPE_1__ ShowFreqsContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS (int *,int *) ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 scalar_t__ av_audio_fifo_size (int ) ;
 int av_audio_fifo_write (int ,void**,int ) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_inlink_consume_samples (int *,scalar_t__,scalar_t__,TYPE_2__**) ;
 int filter_frame (int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    ShowFreqsContext *s = ctx->priv;
    AVFrame *in = ((void*)0);
    int ret = 0;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    if (av_audio_fifo_size(s->fifo) < s->win_size)
        ret = ff_inlink_consume_samples(inlink, s->win_size, s->win_size, &in);
    if (ret < 0)
        return ret;
    if (ret > 0) {
        av_audio_fifo_write(s->fifo, (void **)in->extended_data, in->nb_samples);
        if (s->pts == AV_NOPTS_VALUE)
            s->pts = in->pts;
        av_frame_free(&in);
    }

    if (av_audio_fifo_size(s->fifo) >= s->win_size) {
        ret = filter_frame(inlink);
        if (ret <= 0)
            return ret;
    }

    FF_FILTER_FORWARD_STATUS(inlink, outlink);
    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
