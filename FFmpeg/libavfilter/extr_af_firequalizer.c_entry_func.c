
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int nb_gain_entry; TYPE_1__* gain_entry_tbl; void* gain_entry_err; } ;
struct TYPE_5__ {double freq; double gain; } ;
typedef TYPE_2__ FIREqualizerContext ;
typedef TYPE_3__ AVFilterContext ;


 void* AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int NB_GAIN_ENTRY_MAX ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 scalar_t__ isnan (double) ;

__attribute__((used)) static double entry_func(void *p, double freq, double gain)
{
    AVFilterContext *ctx = p;
    FIREqualizerContext *s = ctx->priv;

    if (s->nb_gain_entry >= NB_GAIN_ENTRY_MAX) {
        av_log(ctx, AV_LOG_ERROR, "entry table overflow.\n");
        s->gain_entry_err = AVERROR(EINVAL);
        return 0;
    }

    if (isnan(freq)) {
        av_log(ctx, AV_LOG_ERROR, "nan frequency (%g, %g).\n", freq, gain);
        s->gain_entry_err = AVERROR(EINVAL);
        return 0;
    }

    if (s->nb_gain_entry > 0 && freq <= s->gain_entry_tbl[s->nb_gain_entry - 1].freq) {
        av_log(ctx, AV_LOG_ERROR, "unsorted frequency (%g, %g).\n", freq, gain);
        s->gain_entry_err = AVERROR(EINVAL);
        return 0;
    }

    s->gain_entry_tbl[s->nb_gain_entry].freq = freq;
    s->gain_entry_tbl[s->nb_gain_entry].gain = gain;
    s->nb_gain_entry++;
    return 0;
}
