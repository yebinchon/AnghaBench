
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* src; } ;
struct TYPE_5__ {int phase; int magnitude; } ;
typedef TYPE_1__ SpectrumSynthContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int ff_request_frame (int ) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SpectrumSynthContext *s = ctx->priv;
    int ret;

    if (!s->magnitude) {
        ret = ff_request_frame(ctx->inputs[0]);
        if (ret < 0)
            return ret;
    }
    if (!s->phase) {
        ret = ff_request_frame(ctx->inputs[1]);
        if (ret < 0)
            return ret;
    }
    return 0;
}
