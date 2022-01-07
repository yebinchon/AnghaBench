
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int channels; int sample_rate; TYPE_3__* dst; } ;
struct TYPE_5__ {int transients; int detector; int phase; int window; int smoothing; int formant; int opitch; int channels; int tempo; int first_pts; scalar_t__ rbs; int nb_samples; int pitch; } ;
typedef TYPE_1__ RubberBandContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 int RubberBandOptionProcessRealTime ;
 int rubberband_delete (scalar_t__) ;
 int rubberband_get_samples_required (scalar_t__) ;
 scalar_t__ rubberband_new (int ,int ,int,int,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    RubberBandContext *s = ctx->priv;
    int opts = s->transients|s->detector|s->phase|s->window|
               s->smoothing|s->formant|s->opitch|s->channels|
               RubberBandOptionProcessRealTime;

    if (s->rbs)
        rubberband_delete(s->rbs);
    s->rbs = rubberband_new(inlink->sample_rate, inlink->channels, opts, 1. / s->tempo, s->pitch);
    if (!s->rbs)
        return AVERROR(ENOMEM);

    s->nb_samples = rubberband_get_samples_required(s->rbs);
    s->first_pts = AV_NOPTS_VALUE;

    return 0;
}
