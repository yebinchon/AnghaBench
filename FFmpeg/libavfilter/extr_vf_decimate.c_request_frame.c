
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* src; } ;
struct TYPE_6__ {int ppsrc; int const eof; } ;
typedef TYPE_1__ DecimateContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR_EOF ;
 int INPUT_CLEANSRC ;
 int INPUT_MAIN ;
 int request_inlink (TYPE_3__*,int) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    int ret;
    AVFilterContext *ctx = outlink->src;
    DecimateContext *dm = ctx->priv;
    const uint32_t eof_mask = 1<<INPUT_MAIN | dm->ppsrc<<INPUT_CLEANSRC;

    if ((dm->eof & eof_mask) == eof_mask)
        return AVERROR_EOF;
    if ((ret = request_inlink(ctx, INPUT_MAIN)) < 0)
        return ret;
    if (dm->ppsrc && (ret = request_inlink(ctx, INPUT_CLEANSRC)) < 0)
        return ret;
    return 0;
}
