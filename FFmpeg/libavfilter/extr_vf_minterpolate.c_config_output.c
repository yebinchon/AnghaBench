
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int time_base; int frame_rate; TYPE_1__* src; } ;
struct TYPE_6__ {int frame_rate; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ MIContext ;
typedef TYPE_3__ AVFilterLink ;


 int av_inv_q (int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    MIContext *mi_ctx = outlink->src->priv;

    outlink->frame_rate = mi_ctx->frame_rate;
    outlink->time_base = av_inv_q(mi_ctx->frame_rate);

    return 0;
}
