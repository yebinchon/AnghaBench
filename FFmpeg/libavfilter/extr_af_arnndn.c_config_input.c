
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* priv; } ;
struct TYPE_12__ {int channels; TYPE_6__* dst; } ;
struct TYPE_11__ {int channels; TYPE_1__* model; TYPE_3__* st; } ;
struct TYPE_9__ {void* denoise_gru_state; void* noise_gru_state; void* vad_gru_state; TYPE_1__* model; } ;
struct TYPE_10__ {int txi_fn; int txi; int tx_fn; int tx; TYPE_2__ rnn; } ;
struct TYPE_8__ {int denoise_gru_size; int noise_gru_size; int vad_gru_size; } ;
typedef TYPE_3__ DenoiseState ;
typedef TYPE_4__ AudioRNNContext ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_TX_FLOAT_FFT ;
 int ENOMEM ;
 int FFALIGN (int ,int) ;
 int WINDOW_SIZE ;
 void* av_calloc (int,int) ;
 int av_tx_init (int *,int *,int ,int,int ,int *,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioRNNContext *s = ctx->priv;
    int ret;

    s->channels = inlink->channels;

    s->st = av_calloc(s->channels, sizeof(DenoiseState));
    if (!s->st)
        return AVERROR(ENOMEM);

    for (int i = 0; i < s->channels; i++) {
        DenoiseState *st = &s->st[i];

        st->rnn.model = s->model;
        st->rnn.vad_gru_state = av_calloc(sizeof(float), FFALIGN(s->model->vad_gru_size, 16));
        st->rnn.noise_gru_state = av_calloc(sizeof(float), FFALIGN(s->model->noise_gru_size, 16));
        st->rnn.denoise_gru_state = av_calloc(sizeof(float), FFALIGN(s->model->denoise_gru_size, 16));
        if (!st->rnn.vad_gru_state ||
            !st->rnn.noise_gru_state ||
            !st->rnn.denoise_gru_state)
            return AVERROR(ENOMEM);

        ret = av_tx_init(&st->tx, &st->tx_fn, AV_TX_FLOAT_FFT, 0, WINDOW_SIZE, ((void*)0), 0);
        if (ret < 0)
            return ret;

        ret = av_tx_init(&st->txi, &st->txi_fn, AV_TX_FLOAT_FFT, 1, WINDOW_SIZE, ((void*)0), 0);
        if (ret < 0)
            return ret;
    }

    return 0;
}
