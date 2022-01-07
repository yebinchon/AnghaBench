
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int sample_rate; TYPE_3__* src; } ;
struct TYPE_6__ {int params; int gains; } ;
typedef TYPE_1__ SuperEqualizerContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int make_fir (TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SuperEqualizerContext *s = ctx->priv;

    make_fir(s, s->gains, s->gains, s->params, outlink->sample_rate);

    return 0;
}
