
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_2__ VMAFMotionContext ;
struct TYPE_9__ {TYPE_1__** inputs; TYPE_2__* priv; } ;
struct TYPE_8__ {TYPE_4__* dst; } ;
struct TYPE_6__ {int format; int h; int w; } ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int ff_vmafmotion_init (int *,int ,int ,int ) ;

__attribute__((used)) static int config_input_ref(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    VMAFMotionContext *s = ctx->priv;

    return ff_vmafmotion_init(&s->data, ctx->inputs[0]->w,
                              ctx->inputs[0]->h, ctx->inputs[0]->format);
}
