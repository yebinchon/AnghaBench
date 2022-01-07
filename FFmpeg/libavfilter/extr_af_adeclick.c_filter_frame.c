
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {TYPE_6__* out; } ;
typedef TYPE_4__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_5__* priv; TYPE_7__** outputs; } ;
struct TYPE_23__ {int channels; TYPE_8__* dst; } ;
struct TYPE_22__ {int nb_samples; int pts; } ;
struct TYPE_21__ {int hop_size; scalar_t__ samples_left; int pts; int detected_errors; int nb_samples; int fifo; TYPE_3__* is; TYPE_2__* in; int window_size; } ;
struct TYPE_19__ {scalar_t__* extended_data; } ;
struct TYPE_18__ {int channels; scalar_t__ extended_data; } ;
struct TYPE_17__ {int (* execute ) (TYPE_8__*,int ,TYPE_4__*,int *,int) ;} ;
typedef TYPE_5__ AudioDeclickContext ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int,scalar_t__) ;
 int av_audio_fifo_drain (int ,int) ;
 int av_audio_fifo_peek (int ,void**,int ) ;
 int av_audio_fifo_size (int ) ;
 int av_frame_free (TYPE_6__**) ;
 int ff_filter_frame (TYPE_7__*,TYPE_6__*) ;
 TYPE_6__* ff_get_audio_buffer (TYPE_7__*,int) ;
 int filter_channel ;
 int stub1 (TYPE_8__*,int ,TYPE_4__*,int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioDeclickContext *s = ctx->priv;
    AVFrame *out = ((void*)0);
    int ret = 0, j, ch, detected_errors = 0;
    ThreadData td;

    out = ff_get_audio_buffer(outlink, s->hop_size);
    if (!out)
        return AVERROR(ENOMEM);

    ret = av_audio_fifo_peek(s->fifo, (void **)s->in->extended_data,
                             s->window_size);
    if (ret < 0)
        goto fail;

    td.out = out;
    ret = ctx->internal->execute(ctx, filter_channel, &td, ((void*)0), inlink->channels);
    if (ret < 0)
        goto fail;

    for (ch = 0; ch < s->in->channels; ch++) {
        double *is = (double *)s->is->extended_data[ch];

        for (j = 0; j < s->hop_size; j++) {
            if (is[j])
                detected_errors++;
        }
    }

    av_audio_fifo_drain(s->fifo, s->hop_size);

    if (s->samples_left > 0)
        out->nb_samples = FFMIN(s->hop_size, s->samples_left);

    out->pts = s->pts;
    s->pts += s->hop_size;

    s->detected_errors += detected_errors;
    s->nb_samples += out->nb_samples * inlink->channels;

    ret = ff_filter_frame(outlink, out);
    if (ret < 0)
        return ret;

    if (s->samples_left > 0) {
        s->samples_left -= s->hop_size;
        if (s->samples_left <= 0)
            av_audio_fifo_drain(s->fifo, av_audio_fifo_size(s->fifo));
    }

fail:
    if (ret < 0)
        av_frame_free(&out);
    return ret;
}
