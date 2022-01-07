
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int format; int sample_rate; TYPE_3__* src; } ;
struct TYPE_5__ {scalar_t__ start_time; void* start_sample; scalar_t__ duration; void* nb_samples; int fade_samples; } ;
typedef TYPE_1__ AudioFadeContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;
 int AV_TIME_BASE ;
 void* av_rescale (scalar_t__,int ,int ) ;
 int fade_samples_dbl ;
 int fade_samples_dblp ;
 int fade_samples_flt ;
 int fade_samples_fltp ;
 int fade_samples_s16 ;
 int fade_samples_s16p ;
 int fade_samples_s32 ;
 int fade_samples_s32p ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioFadeContext *s = ctx->priv;

    switch (outlink->format) {
    case 135: s->fade_samples = fade_samples_dbl; break;
    case 134: s->fade_samples = fade_samples_dblp; break;
    case 133: s->fade_samples = fade_samples_flt; break;
    case 132: s->fade_samples = fade_samples_fltp; break;
    case 131: s->fade_samples = fade_samples_s16; break;
    case 130: s->fade_samples = fade_samples_s16p; break;
    case 129: s->fade_samples = fade_samples_s32; break;
    case 128: s->fade_samples = fade_samples_s32p; break;
    }

    if (s->duration)
        s->nb_samples = av_rescale(s->duration, outlink->sample_rate, AV_TIME_BASE);
    if (s->start_time)
        s->start_sample = av_rescale(s->start_time, outlink->sample_rate, AV_TIME_BASE);

    return 0;
}
