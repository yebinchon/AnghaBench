
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int channels; TYPE_4__* dst; } ;
struct TYPE_8__ {double ratioA; double ratioB; } ;
struct TYPE_7__ {TYPE_2__* chan; } ;
typedef TYPE_1__ DeesserContext ;
typedef TYPE_2__ DeesserChannel ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* av_calloc (int,int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    DeesserContext *s = ctx->priv;

    s->chan = av_calloc(inlink->channels, sizeof(*s->chan));
    if (!s->chan)
        return AVERROR(ENOMEM);

    for (int i = 0; i < inlink->channels; i++) {
        DeesserChannel *chan = &s->chan[i];

        chan->ratioA = chan->ratioB = 1.0;
    }

    return 0;
}
