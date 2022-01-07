
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int w; int h; int time_base; TYPE_4__* dst; } ;
struct TYPE_9__ {TYPE_1__* streamcontexts; } ;
struct TYPE_8__ {int divide; int w; int h; int time_base; } ;
typedef TYPE_1__ StreamContext ;
typedef TYPE_2__ SignatureContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AV_LOG_WARNING ;
 int BLOCK_LCM ;
 size_t FF_INLINK_IDX (TYPE_3__*) ;
 int INT64_MAX ;
 int av_log (TYPE_4__*,int ,char*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    SignatureContext *sic = ctx->priv;
    StreamContext *sc = &(sic->streamcontexts[FF_INLINK_IDX(inlink)]);

    sc->time_base = inlink->time_base;

    sc->divide = (((uint64_t) inlink->w/32) * (inlink->w/32 + 1) * (inlink->h/32 * inlink->h/32 + 1) > INT64_MAX / (BLOCK_LCM * 255));
    if (sc->divide) {
        av_log(ctx, AV_LOG_WARNING, "Input dimension too high for precise calculation, numbers will be rounded.\n");
    }
    sc->w = inlink->w;
    sc->h = inlink->h;
    return 0;
}
