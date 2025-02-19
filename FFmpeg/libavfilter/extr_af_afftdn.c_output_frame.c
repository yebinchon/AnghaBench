
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_31__ {TYPE_5__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_36__ {TYPE_1__* internal; TYPE_4__* priv; TYPE_6__** outputs; } ;
struct TYPE_35__ {int channels; TYPE_7__* dst; } ;
struct TYPE_34__ {int pts; scalar_t__* extended_data; } ;
struct TYPE_33__ {int window_length; scalar_t__ noise_floor; scalar_t__ last_noise_floor; int sample_noise; int sample_advance; int output_mode; int pts; int fifo; TYPE_3__* dnch; int block_count; scalar_t__ sample_noise_end; scalar_t__ sample_noise_start; scalar_t__ track_noise; } ;
struct TYPE_32__ {double* out_samples; } ;
struct TYPE_30__ {int (* execute ) (TYPE_7__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ DeNoiseChannel ;
typedef TYPE_4__ AudioFFTDeNoiseContext ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterLink ;
typedef TYPE_7__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int ENOMEM ;
 int FFMIN (int,int ) ;



 int av_audio_fifo_drain (int ,int) ;
 int av_audio_fifo_peek (int ,void**,int) ;
 int av_frame_free (TYPE_5__**) ;
 int ff_filter_frame (TYPE_6__*,TYPE_5__*) ;
 int ff_filter_get_nb_threads (TYPE_7__*) ;
 TYPE_5__* ff_get_audio_buffer (TYPE_6__*,int) ;
 int filter_channel ;
 int finish_sample_noise (TYPE_4__*,TYPE_3__*,double*) ;
 int get_auto_noise_levels (TYPE_4__*,TYPE_3__*,double*) ;
 int init_sample_noise (TYPE_3__*) ;
 int memmove (double*,double*,int) ;
 int memset (double*,int ,int) ;
 int sample_noise_block (TYPE_4__*,TYPE_3__*,TYPE_5__*,int) ;
 int set_band_parameters (TYPE_4__*,TYPE_3__*) ;
 int set_noise_profile (TYPE_4__*,TYPE_3__*,double*,int) ;
 int set_parameters (TYPE_4__*) ;
 int stub1 (TYPE_7__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int output_frame(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioFFTDeNoiseContext *s = ctx->priv;
    AVFrame *out = ((void*)0), *in = ((void*)0);
    ThreadData td;
    int ret = 0;

    in = ff_get_audio_buffer(outlink, s->window_length);
    if (!in)
        return AVERROR(ENOMEM);

    ret = av_audio_fifo_peek(s->fifo, (void **)in->extended_data, s->window_length);
    if (ret < 0)
        goto end;

    if (s->track_noise) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];
            double levels[15];

            get_auto_noise_levels(s, dnch, levels);
            set_noise_profile(s, dnch, levels, 0);
        }

        if (s->noise_floor != s->last_noise_floor)
            set_parameters(s);
    }

    if (s->sample_noise_start) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];

            init_sample_noise(dnch);
        }
        s->sample_noise_start = 0;
        s->sample_noise = 1;
    }

    if (s->sample_noise) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];

            sample_noise_block(s, dnch, in, ch);
        }
    }

    if (s->sample_noise_end) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];
            double sample_noise[15];

            finish_sample_noise(s, dnch, sample_noise);
            set_noise_profile(s, dnch, sample_noise, 1);
            set_band_parameters(s, dnch);
        }
        s->sample_noise = 0;
        s->sample_noise_end = 0;
    }

    s->block_count++;
    td.in = in;
    ctx->internal->execute(ctx, filter_channel, &td, ((void*)0),
                           FFMIN(outlink->channels, ff_filter_get_nb_threads(ctx)));

    out = ff_get_audio_buffer(outlink, s->sample_advance);
    if (!out) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    for (int ch = 0; ch < inlink->channels; ch++) {
        DeNoiseChannel *dnch = &s->dnch[ch];
        double *src = dnch->out_samples;
        float *orig = (float *)in->extended_data[ch];
        float *dst = (float *)out->extended_data[ch];

        switch (s->output_mode) {
        case 130:
            for (int m = 0; m < s->sample_advance; m++)
                dst[m] = orig[m];
            break;
        case 128:
            for (int m = 0; m < s->sample_advance; m++)
                dst[m] = src[m];
            break;
        case 129:
            for (int m = 0; m < s->sample_advance; m++)
                dst[m] = orig[m] - src[m];
            break;
        default:
            av_frame_free(&out);
            ret = AVERROR_BUG;
            goto end;
        }
        memmove(src, src + s->sample_advance, (s->window_length - s->sample_advance) * sizeof(*src));
        memset(src + (s->window_length - s->sample_advance), 0, s->sample_advance * sizeof(*src));
    }

    av_audio_fifo_drain(s->fifo, s->sample_advance);

    out->pts = s->pts;
    ret = ff_filter_frame(outlink, out);
    if (ret < 0)
        goto end;
    s->pts += s->sample_advance;
end:
    av_frame_free(&in);

    return ret;
}
