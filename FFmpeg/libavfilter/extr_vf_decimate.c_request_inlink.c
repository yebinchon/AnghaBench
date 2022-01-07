
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ** inputs; TYPE_1__* priv; } ;
struct TYPE_4__ {int eof; int * got_frame; } ;
typedef TYPE_1__ DecimateContext ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR_EOF ;
 int ff_request_frame (int *) ;
 int filter_frame (int *,int *) ;

__attribute__((used)) static int request_inlink(AVFilterContext *ctx, int lid)
{
    int ret = 0;
    DecimateContext *dm = ctx->priv;

    if (!dm->got_frame[lid]) {
        AVFilterLink *inlink = ctx->inputs[lid];
        ret = ff_request_frame(inlink);
        if (ret == AVERROR_EOF) {
            dm->eof |= 1 << lid;
            ret = filter_frame(inlink, ((void*)0));
        }
    }
    return ret;
}
