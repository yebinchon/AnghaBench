
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {scalar_t__ w; scalar_t__ h; TYPE_4__* dst; } ;
struct TYPE_7__ {scalar_t__ xmax; scalar_t__ ymax; TYPE_1__* obj_frame; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_2__ FOCContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;



__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FOCContext *foc = ctx->priv;

    if (foc->xmax <= 0)
        foc->xmax = inlink->w - foc->obj_frame->width;
    if (foc->ymax <= 0)
        foc->ymax = inlink->h - foc->obj_frame->height;

    return 0;
}
