
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {TYPE_2__* internal; TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_20__ {int channels; TYPE_6__* dst; } ;
struct TYPE_19__ {scalar_t__ pts; scalar_t__ nb_samples; scalar_t__ extended_data; } ;
struct TYPE_18__ {scalar_t__ pts; scalar_t__ offset; int H; int N; scalar_t__ eof_left; int fifo; TYPE_1__* in; } ;
struct TYPE_17__ {int (* execute ) (TYPE_6__*,int ,TYPE_4__*,int *,int ) ;} ;
struct TYPE_16__ {scalar_t__ extended_data; } ;
typedef TYPE_3__ AudioNLMeansContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 scalar_t__ FFMIN (scalar_t__,scalar_t__) ;
 int av_audio_fifo_drain (int ,int) ;
 int av_audio_fifo_peek (int ,void**,int) ;
 int av_audio_fifo_size (int ) ;
 int av_audio_fifo_write (int ,void**,scalar_t__) ;
 int av_frame_free (TYPE_4__**) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* ff_get_audio_buffer (TYPE_5__*,int) ;
 int filter_channel ;
 int stub1 (TYPE_6__*,int ,TYPE_4__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioNLMeansContext *s = ctx->priv;
    AVFrame *out = ((void*)0);
    int available, wanted, ret;

    if (s->pts == AV_NOPTS_VALUE)
        s->pts = in->pts;

    ret = av_audio_fifo_write(s->fifo, (void **)in->extended_data,
                              in->nb_samples);
    av_frame_free(&in);

    s->offset = 0;
    available = av_audio_fifo_size(s->fifo);
    wanted = (available / s->H) * s->H;

    if (wanted >= s->H && available >= s->N) {
        out = ff_get_audio_buffer(outlink, wanted);
        if (!out)
            return AVERROR(ENOMEM);
    }

    while (available >= s->N) {
        ret = av_audio_fifo_peek(s->fifo, (void **)s->in->extended_data, s->N);
        if (ret < 0)
            break;

        ctx->internal->execute(ctx, filter_channel, out, ((void*)0), inlink->channels);

        av_audio_fifo_drain(s->fifo, s->H);

        s->offset += s->H;
        available -= s->H;
    }

    if (out) {
        out->pts = s->pts;
        out->nb_samples = s->offset;
        if (s->eof_left >= 0) {
            out->nb_samples = FFMIN(s->eof_left, s->offset);
            s->eof_left -= out->nb_samples;
        }
        s->pts += s->offset;

        return ff_filter_frame(outlink, out);
    }

    return ret;
}
