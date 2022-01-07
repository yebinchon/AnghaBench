
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int filter; } ;
struct TYPE_6__ {TYPE_3__* priv; } ;
struct TYPE_5__ {int format; TYPE_2__* dst; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;
typedef TYPE_3__ ASoftClipContext ;






 int filter_dbl ;
 int filter_flt ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ASoftClipContext *s = ctx->priv;

    switch (inlink->format) {
    case 129:
    case 128: s->filter = filter_flt; break;
    case 131:
    case 130: s->filter = filter_dbl; break;
    }

    return 0;
}
