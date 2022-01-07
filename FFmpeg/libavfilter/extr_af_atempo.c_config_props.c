
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_5__ {int * priv; } ;
struct TYPE_4__ {int format; int channels; scalar_t__ sample_rate; TYPE_2__* dst; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;
typedef int ATempoContext ;


 int yae_reset (int *,int,int,int ) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ATempoContext *atempo = ctx->priv;

    enum AVSampleFormat format = inlink->format;
    int sample_rate = (int)inlink->sample_rate;

    return yae_reset(atempo, format, sample_rate, inlink->channels);
}
