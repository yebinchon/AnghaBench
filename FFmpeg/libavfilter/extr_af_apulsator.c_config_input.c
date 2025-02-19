
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {int sample_rate; TYPE_5__* dst; } ;
struct TYPE_8__ {double freq; int pwidth; int amount; int srate; int offset; int mode; } ;
struct TYPE_7__ {double freq; int pwidth; int amount; int srate; int offset; int mode; } ;
struct TYPE_9__ {int timing; int bpm; int ms; double hertz; int pwidth; TYPE_2__ lfoR; TYPE_1__ lfoL; int amount; int offset_r; int offset_l; int mode; } ;
typedef TYPE_3__ AudioPulsatorContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;





 int av_assert0 (int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AudioPulsatorContext *s = ctx->priv;
    double freq;

    switch (s->timing) {
    case 130: freq = s->bpm / 60; break;
    case 128: freq = 1 / (s->ms / 1000.); break;
    case 129: freq = s->hertz; break;
    default: av_assert0(0);
    }

    s->lfoL.freq = freq;
    s->lfoR.freq = freq;
    s->lfoL.mode = s->mode;
    s->lfoR.mode = s->mode;
    s->lfoL.offset = s->offset_l;
    s->lfoR.offset = s->offset_r;
    s->lfoL.srate = inlink->sample_rate;
    s->lfoR.srate = inlink->sample_rate;
    s->lfoL.amount = s->amount;
    s->lfoR.amount = s->amount;
    s->lfoL.pwidth = s->pwidth;
    s->lfoR.pwidth = s->pwidth;

    return 0;
}
