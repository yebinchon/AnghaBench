
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int min_samples; int max_samples; int partial_buf_size; int sample_rate; TYPE_3__* dst; } ;
struct TYPE_5__ {int peak_mode; scalar_t__ metadata; } ;
typedef TYPE_1__ EBUR128Context ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int PEAK_MODE_TRUE_PEAKS ;

__attribute__((used)) static int config_audio_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    EBUR128Context *ebur128 = ctx->priv;







    if (ebur128->metadata || (ebur128->peak_mode & PEAK_MODE_TRUE_PEAKS))
        inlink->min_samples =
        inlink->max_samples =
        inlink->partial_buf_size = inlink->sample_rate / 10;
    return 0;
}
