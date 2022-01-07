
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int filter; } ;
struct TYPE_8__ {TYPE_1__* filter; TYPE_4__* priv; } ;
struct TYPE_7__ {int format; TYPE_3__* dst; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;
typedef TYPE_4__ ADerivativeContext ;






 int aderivative_dblp ;
 int aderivative_fltp ;
 int aderivative_s16p ;
 int aderivative_s32p ;
 int aintegral_dblp ;
 int aintegral_fltp ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ADerivativeContext *s = ctx->priv;

    switch (inlink->format) {
    case 130: s->filter = aderivative_fltp; break;
    case 131: s->filter = aderivative_dblp; break;
    case 128: s->filter = aderivative_s32p; break;
    case 129: s->filter = aderivative_s16p; break;
    }

    if (strcmp(ctx->filter->name, "aintegral"))
        return 0;

    switch (inlink->format) {
    case 130: s->filter = aintegral_fltp; break;
    case 131: s->filter = aintegral_dblp; break;
    }

    return 0;
}
