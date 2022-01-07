
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_7__ {void* frame_rate; void* time_base; TYPE_3__* src; } ;
struct TYPE_6__ {int cycle; } ;
typedef TYPE_1__ DejudderContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_VERBOSE ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int av_make_q (int,int) ;
 void* av_mul_q (void*,int ) ;

__attribute__((used)) static int config_out_props(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    DejudderContext *s = ctx->priv;
    AVFilterLink *inlink = outlink->src->inputs[0];

    outlink->time_base = av_mul_q(inlink->time_base, av_make_q(1, 2 * s->cycle));
    outlink->frame_rate = av_mul_q(inlink->frame_rate, av_make_q(2 * s->cycle, 1));

    av_log(ctx, AV_LOG_VERBOSE, "cycle:%d\n", s->cycle);

    return 0;
}
