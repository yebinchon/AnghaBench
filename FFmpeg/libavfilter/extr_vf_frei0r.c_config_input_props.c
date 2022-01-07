
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int h; int w; TYPE_3__* dst; } ;
struct TYPE_7__ {int params; scalar_t__ (* construct ) (int ,int ) ;scalar_t__ instance; int (* destruct ) (scalar_t__) ;} ;
typedef TYPE_1__ Frei0rContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 int set_params (TYPE_3__*,int ) ;
 int stub1 (scalar_t__) ;
 scalar_t__ stub2 (int ,int ) ;

__attribute__((used)) static int config_input_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    Frei0rContext *s = ctx->priv;

    if (s->destruct && s->instance)
        s->destruct(s->instance);
    if (!(s->instance = s->construct(inlink->w, inlink->h))) {
        av_log(ctx, AV_LOG_ERROR, "Impossible to load frei0r instance.\n");
        return AVERROR(EINVAL);
    }

    return set_params(ctx, s->params);
}
