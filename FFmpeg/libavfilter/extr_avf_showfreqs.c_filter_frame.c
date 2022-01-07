
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_4__* dst; } ;
struct TYPE_12__ {scalar_t__ extended_data; int pts; } ;
struct TYPE_11__ {scalar_t__ hop_size; int fifo; int win_size; int pts; } ;
typedef TYPE_1__ ShowFreqsContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_audio_fifo_drain (int ,scalar_t__) ;
 int av_audio_fifo_peek (int ,void**,int ) ;
 int av_frame_free (TYPE_2__**) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,int ) ;
 int plot_freqs (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ShowFreqsContext *s = ctx->priv;
    AVFrame *fin = ((void*)0);
    int ret = 0;

    fin = ff_get_audio_buffer(inlink, s->win_size);
    if (!fin) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    fin->pts = s->pts;
    s->pts += s->hop_size;
    ret = av_audio_fifo_peek(s->fifo, (void **)fin->extended_data, s->win_size);
    if (ret < 0)
        goto fail;

    ret = plot_freqs(inlink, fin);
    av_frame_free(&fin);
    av_audio_fifo_drain(s->fifo, s->hop_size);

fail:
    av_frame_free(&fin);
    return ret;
}
