
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* internal; TYPE_2__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_15__ {scalar_t__ nb_samples; scalar_t__ extended_data; scalar_t__ pts; } ;
struct TYPE_14__ {scalar_t__ win_size; int fifo; scalar_t__ hop_size; scalar_t__ consumed; scalar_t__ pts; } ;
struct TYPE_13__ {int (* execute ) (TYPE_4__*,int ,TYPE_3__*,int *,int) ;} ;
typedef TYPE_2__ ShowSpatialContext ;
typedef TYPE_3__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFERROR_NOT_READY ;
 int FFMIN (scalar_t__,scalar_t__) ;
 int FF_FILTER_FORWARD_STATUS (int *,int *) ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int av_assert0 (int) ;
 int av_audio_fifo_drain (int ,scalar_t__) ;
 int av_audio_fifo_peek (int ,void**,int ) ;
 scalar_t__ av_audio_fifo_size (int ) ;
 int av_audio_fifo_write (int ,void**,scalar_t__) ;
 int av_frame_free (TYPE_3__**) ;
 int draw_spatial (int *,TYPE_3__*) ;
 int ff_filter_set_ready (TYPE_4__*,int) ;
 TYPE_3__* ff_get_audio_buffer (int *,scalar_t__) ;
 int ff_inlink_consume_frame (int *,TYPE_3__**) ;
 int ff_inlink_request_frame (int *) ;
 scalar_t__ ff_outlink_frame_wanted (int *) ;
 int run_channel_fft ;
 int stub1 (TYPE_4__*,int ,TYPE_3__*,int *,int) ;

__attribute__((used)) static int spatial_activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    ShowSpatialContext *s = ctx->priv;
    int ret;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    if (av_audio_fifo_size(s->fifo) < s->win_size) {
        AVFrame *frame = ((void*)0);

        ret = ff_inlink_consume_frame(inlink, &frame);
        if (ret < 0)
            return ret;
        if (ret > 0) {
            s->pts = frame->pts;
            s->consumed = 0;

            av_audio_fifo_write(s->fifo, (void **)frame->extended_data, frame->nb_samples);
            av_frame_free(&frame);
        }
    }

    if (av_audio_fifo_size(s->fifo) >= s->win_size) {
        AVFrame *fin = ff_get_audio_buffer(inlink, s->win_size);
        if (!fin)
            return AVERROR(ENOMEM);

        fin->pts = s->pts + s->consumed;
        s->consumed += s->hop_size;
        ret = av_audio_fifo_peek(s->fifo, (void **)fin->extended_data,
                                 FFMIN(s->win_size, av_audio_fifo_size(s->fifo)));
        if (ret < 0) {
            av_frame_free(&fin);
            return ret;
        }

        av_assert0(fin->nb_samples == s->win_size);

        ctx->internal->execute(ctx, run_channel_fft, fin, ((void*)0), 2);

        ret = draw_spatial(inlink, fin);

        av_frame_free(&fin);
        av_audio_fifo_drain(s->fifo, s->hop_size);
        if (ret <= 0)
            return ret;
    }

    FF_FILTER_FORWARD_STATUS(inlink, outlink);
    if (ff_outlink_frame_wanted(outlink) && av_audio_fifo_size(s->fifo) < s->win_size) {
        ff_inlink_request_frame(inlink);
        return 0;
    }

    if (av_audio_fifo_size(s->fifo) >= s->win_size) {
        ff_filter_set_ready(ctx, 10);
        return 0;
    }
    return FFERROR_NOT_READY;
}
