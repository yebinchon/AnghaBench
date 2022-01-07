
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int nb_inputs; int bps; } ;
struct TYPE_16__ {int str; } ;
struct TYPE_15__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_6__* priv; } ;
struct TYPE_14__ {scalar_t__ sample_rate; int time_base; TYPE_4__* src; } ;
struct TYPE_13__ {int channel_layout; int format; } ;
struct TYPE_12__ {scalar_t__ sample_rate; int channel_layout; int time_base; } ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;
typedef TYPE_5__ AVBPrint ;
typedef TYPE_6__ AMergeContext ;


 int AVERROR (int ) ;
 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int EINVAL ;
 int av_bprint_channel_layout (TYPE_5__*,int,int ) ;
 int av_bprint_init (TYPE_5__*,int ,int ) ;
 int av_bprintf (TYPE_5__*,char*,...) ;
 int av_get_bytes_per_sample (int ) ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__,...) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AMergeContext *s = ctx->priv;
    AVBPrint bp;
    int i;

    for (i = 1; i < s->nb_inputs; i++) {
        if (ctx->inputs[i]->sample_rate != ctx->inputs[0]->sample_rate) {
            av_log(ctx, AV_LOG_ERROR,
                   "Inputs must have the same sample rate "
                   "%d for in%d vs %d\n",
                   ctx->inputs[i]->sample_rate, i, ctx->inputs[0]->sample_rate);
            return AVERROR(EINVAL);
        }
    }
    s->bps = av_get_bytes_per_sample(ctx->outputs[0]->format);
    outlink->sample_rate = ctx->inputs[0]->sample_rate;
    outlink->time_base = ctx->inputs[0]->time_base;

    av_bprint_init(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);
    for (i = 0; i < s->nb_inputs; i++) {
        av_bprintf(&bp, "%sin%d:", i ? " + " : "", i);
        av_bprint_channel_layout(&bp, -1, ctx->inputs[i]->channel_layout);
    }
    av_bprintf(&bp, " -> out:");
    av_bprint_channel_layout(&bp, -1, ctx->outputs[0]->channel_layout);
    av_log(ctx, AV_LOG_VERBOSE, "%s\n", bp.str);

    return 0;
}
