
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {int channels; int sample_rate; TYPE_4__* dst; } ;
struct TYPE_6__ {int num; int den; } ;
struct TYPE_7__ {int dchannels; scalar_t__ dmode; void* achistogram; int w; void* shistogram; TYPE_1__ frame_rate; int nb_samples; } ;
typedef TYPE_2__ AudioHistogramContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMAX (int,int ) ;
 scalar_t__ SINGLE ;
 void* av_calloc (int ,int) ;
 int av_rescale (int ,int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioHistogramContext *s = ctx->priv;

    s->nb_samples = FFMAX(1, av_rescale(inlink->sample_rate, s->frame_rate.den, s->frame_rate.num));
    s->dchannels = s->dmode == SINGLE ? 1 : inlink->channels;
    s->shistogram = av_calloc(s->w, s->dchannels * sizeof(*s->shistogram));
    if (!s->shistogram)
        return AVERROR(ENOMEM);

    s->achistogram = av_calloc(s->w, s->dchannels * sizeof(*s->achistogram));
    if (!s->achistogram)
        return AVERROR(ENOMEM);

    return 0;
}
