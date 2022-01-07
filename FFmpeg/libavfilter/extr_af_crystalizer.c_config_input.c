
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int format; TYPE_3__* dst; } ;
struct TYPE_5__ {int filter; } ;
typedef TYPE_1__ CrystalizerContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;






 int filter_dbl ;
 int filter_dblp ;
 int filter_flt ;
 int filter_fltp ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    CrystalizerContext *s = ctx->priv;

    switch (inlink->format) {
    case 129: s->filter = filter_flt; break;
    case 131: s->filter = filter_dbl; break;
    case 128: s->filter = filter_fltp; break;
    case 130: s->filter = filter_dblp; break;
    }

    return 0;
}
