
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__** inputs; } ;
struct TYPE_7__ {TYPE_3__* dst; } ;
struct TYPE_6__ {scalar_t__ w; scalar_t__ h; scalar_t__ format; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;

__attribute__((used)) static int config_input_impulse(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;

    if (ctx->inputs[0]->w != ctx->inputs[1]->w ||
        ctx->inputs[0]->h != ctx->inputs[1]->h) {
        av_log(ctx, AV_LOG_ERROR, "Width and height of input videos must be same.\n");
        return AVERROR(EINVAL);
    }
    if (ctx->inputs[0]->format != ctx->inputs[1]->format) {
        av_log(ctx, AV_LOG_ERROR, "Inputs must be of same pixel format.\n");
        return AVERROR(EINVAL);
    }

    return 0;
}
