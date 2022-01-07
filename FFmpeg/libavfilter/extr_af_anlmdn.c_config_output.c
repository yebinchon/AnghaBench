
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ extended_data; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int channels; int format; int sample_rate; TYPE_3__* src; } ;
struct TYPE_8__ {int K; int S; int eof_left; int H; int N; float pdiff_lut_scale; float m; int dsp; int * weight_lut; TYPE_7__* in; int fifo; TYPE_7__* cache; int pts; int rd; int pd; } ;
typedef TYPE_1__ AudioNLMeansContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_NOPTS_VALUE ;
 int AV_TIME_BASE ;
 int ENOMEM ;
 float WEIGHT_LUT_SIZE ;
 int av_audio_fifo_alloc (int ,int ,int) ;
 int av_audio_fifo_write (int ,void**,int) ;
 int av_frame_free (TYPE_7__**) ;
 int av_log (TYPE_3__*,int ,char*,int,int,int,int) ;
 void* av_rescale (int ,int ,int ) ;
 int expf (float) ;
 int ff_anlmdn_init (int *) ;
 void* ff_get_audio_buffer (TYPE_2__*,int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioNLMeansContext *s = ctx->priv;
    int ret;

    s->K = av_rescale(s->pd, outlink->sample_rate, AV_TIME_BASE);
    s->S = av_rescale(s->rd, outlink->sample_rate, AV_TIME_BASE);

    s->eof_left = -1;
    s->pts = AV_NOPTS_VALUE;
    s->H = s->K * 2 + 1;
    s->N = s->H + (s->K + s->S) * 2;

    av_log(ctx, AV_LOG_DEBUG, "K:%d S:%d H:%d N:%d\n", s->K, s->S, s->H, s->N);

    av_frame_free(&s->in);
    av_frame_free(&s->cache);
    s->in = ff_get_audio_buffer(outlink, s->N);
    if (!s->in)
        return AVERROR(ENOMEM);

    s->cache = ff_get_audio_buffer(outlink, s->S * 2);
    if (!s->cache)
        return AVERROR(ENOMEM);

    s->fifo = av_audio_fifo_alloc(outlink->format, outlink->channels, s->N);
    if (!s->fifo)
        return AVERROR(ENOMEM);

    ret = av_audio_fifo_write(s->fifo, (void **)s->in->extended_data, s->K + s->S);
    if (ret < 0)
        return ret;

    s->pdiff_lut_scale = 1.f / s->m * WEIGHT_LUT_SIZE;
    for (int i = 0; i < WEIGHT_LUT_SIZE; i++) {
        float w = -i / s->pdiff_lut_scale;

        s->weight_lut[i] = expf(w);
    }

    ff_anlmdn_init(&s->dsp);

    return 0;
}
