
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* dst; } ;
struct TYPE_5__ {scalar_t__ radiusV; scalar_t__ radiusH; int* power; } ;
typedef TYPE_1__ AverageBlurOpenCLContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;



__attribute__((used)) static int avgblur_opencl_make_filter_params(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AverageBlurOpenCLContext *s = ctx->priv;
    int i;

    if (s->radiusV <= 0) {
        s->radiusV = s->radiusH;
    }

    for (i = 0; i < 4; i++) {
        s->power[i] = 1;
    }
    return 0;
}
