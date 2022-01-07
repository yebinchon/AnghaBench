
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int channels; double sample_rate; int format; TYPE_3__* src; } ;
struct TYPE_6__ {int channels; int num_chorus; double* delays; double* depths; int* length; int* speeds; float in_gain; double out_gain; int max_samples; int chorusbuf; int fade_out; void** phase; void* counter; scalar_t__* decays; int * lookup_table; } ;
typedef TYPE_1__ ChorusContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int AV_SAMPLE_FMT_S32 ;
 int ENOMEM ;
 int FFMAX (int ,int) ;
 int WAVE_SIN ;
 void* av_calloc (int,int) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int av_malloc (int) ;
 int av_samples_alloc_array_and_samples (int *,int *,int,int ,int ,int ) ;
 int ff_generate_wave_table (int ,int ,int ,int,int,int,int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ChorusContext *s = ctx->priv;
    float sum_in_volume = 1.0;
    int n;

    s->channels = outlink->channels;

    for (n = 0; n < s->num_chorus; n++) {
        int samples = (int) ((s->delays[n] + s->depths[n]) * outlink->sample_rate / 1000.0);
        int depth_samples = (int) (s->depths[n] * outlink->sample_rate / 1000.0);

        s->length[n] = outlink->sample_rate / s->speeds[n];

        s->lookup_table[n] = av_malloc(sizeof(int32_t) * s->length[n]);
        if (!s->lookup_table[n])
            return AVERROR(ENOMEM);

        ff_generate_wave_table(WAVE_SIN, AV_SAMPLE_FMT_S32, s->lookup_table[n],
                               s->length[n], 0., depth_samples, 0);
        s->max_samples = FFMAX(s->max_samples, samples);
    }

    for (n = 0; n < s->num_chorus; n++)
        sum_in_volume += s->decays[n];

    if (s->in_gain * (sum_in_volume) > 1.0 / s->out_gain)
        av_log(ctx, AV_LOG_WARNING, "output gain can cause saturation or clipping of output\n");

    s->counter = av_calloc(outlink->channels, sizeof(*s->counter));
    if (!s->counter)
        return AVERROR(ENOMEM);

    s->phase = av_calloc(outlink->channels, sizeof(*s->phase));
    if (!s->phase)
        return AVERROR(ENOMEM);

    for (n = 0; n < outlink->channels; n++) {
        s->phase[n] = av_calloc(s->num_chorus, sizeof(int));
        if (!s->phase[n])
            return AVERROR(ENOMEM);
    }

    s->fade_out = s->max_samples;

    return av_samples_alloc_array_and_samples(&s->chorusbuf, ((void*)0),
                                              outlink->channels,
                                              s->max_samples,
                                              outlink->format, 0);
}
