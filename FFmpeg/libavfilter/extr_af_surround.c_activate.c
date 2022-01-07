
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {TYPE_1__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_9__ {scalar_t__ pts; int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_8__ {int eof; scalar_t__ buf_size; scalar_t__ pts; int fifo; } ;
typedef TYPE_1__ AudioSurroundContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR_EOF ;
 scalar_t__ AV_NOPTS_VALUE ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 scalar_t__ av_audio_fifo_size (int ) ;
 int av_audio_fifo_write (int ,void**,int ) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_set_ready (TYPE_3__*,int) ;
 scalar_t__ ff_inlink_acknowledge_status (int *,int*,int *) ;
 int ff_inlink_consume_frame (int *,TYPE_2__**) ;
 int ff_outlink_set_status (int *,int,scalar_t__) ;
 int filter_frame (int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AudioSurroundContext *s = ctx->priv;
    AVFrame *in = ((void*)0);
    int ret = 0, status;
    int64_t pts;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    if (!s->eof && av_audio_fifo_size(s->fifo) < s->buf_size) {
        ret = ff_inlink_consume_frame(inlink, &in);
        if (ret < 0)
            return ret;

        if (ret > 0) {
            ret = av_audio_fifo_write(s->fifo, (void **)in->extended_data,
                                      in->nb_samples);
            if (ret >= 0 && s->pts == AV_NOPTS_VALUE)
                s->pts = in->pts;

            av_frame_free(&in);
            if (ret < 0)
                return ret;
        }
    }

    if ((av_audio_fifo_size(s->fifo) >= s->buf_size) ||
        (av_audio_fifo_size(s->fifo) > 0 && s->eof)) {
        ret = filter_frame(inlink);
        if (av_audio_fifo_size(s->fifo) >= s->buf_size)
            ff_filter_set_ready(ctx, 100);
        return ret;
    }

    if (!s->eof && ff_inlink_acknowledge_status(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            s->eof = 1;
            if (av_audio_fifo_size(s->fifo) >= 0) {
                ff_filter_set_ready(ctx, 100);
                return 0;
            }
        }
    }

    if (s->eof && av_audio_fifo_size(s->fifo) <= 0) {
        ff_outlink_set_status(outlink, AVERROR_EOF, s->pts);
        return 0;
    }

    if (!s->eof)
        FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
