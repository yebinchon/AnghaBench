
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int channels; int sample_rate; TYPE_3__* dst; } ;
struct TYPE_7__ {scalar_t__ type; int gain; int lfe_gain; int n_conv; int buffer_length; int radius; int elevation; int rotation; int gain_lfe; int framesize; int nb_samples; } ;
typedef TYPE_1__ SOFAlizerContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_DEBUG ;
 scalar_t__ FREQUENCY_DOMAIN ;
 int M_LN10 ;
 int av_log (TYPE_3__*,int ,char*,int ,int,int,int ) ;
 int expf (int) ;
 int load_data (TYPE_3__*,int ,int ,int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    SOFAlizerContext *s = ctx->priv;
    int ret;

    if (s->type == FREQUENCY_DOMAIN)
        s->nb_samples = s->framesize;


    s->gain_lfe = expf((s->gain - 3 * inlink->channels + s->lfe_gain) / 20 * M_LN10);

    s->n_conv = inlink->channels;


    if ((ret = load_data(ctx, s->rotation, s->elevation, s->radius, inlink->sample_rate)) < 0)
        return ret;

    av_log(ctx, AV_LOG_DEBUG, "Samplerate: %d Channels to convolute: %d, Length of ringbuffer: %d x %d\n",
        inlink->sample_rate, s->n_conv, inlink->channels, s->buffer_length);

    return 0;
}
