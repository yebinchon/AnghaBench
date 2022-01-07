
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ more_data; } ;
struct TYPE_8__ {int * inputs; TYPE_3__* priv; } ;
struct TYPE_7__ {TYPE_2__* src; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;
typedef TYPE_3__ AResampleContext ;


 int AVERROR_EOF ;
 int ff_filter_frame (TYPE_1__*,int *) ;
 int ff_request_frame (int ) ;
 scalar_t__ flush_frame (TYPE_1__*,int,int **) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AResampleContext *aresample = ctx->priv;
    int ret;


    if (aresample->more_data) {
        AVFrame *outsamplesref;

        if (flush_frame(outlink, 0, &outsamplesref) >= 0) {
            return ff_filter_frame(outlink, outsamplesref);
        }
    }
    aresample->more_data = 0;


    ret = ff_request_frame(ctx->inputs[0]);


    if (ret == AVERROR_EOF) {
        AVFrame *outsamplesref;

        if ((ret = flush_frame(outlink, 1, &outsamplesref)) < 0)
            return ret;

        return ff_filter_frame(outlink, outsamplesref);
    }
    return ret;
}
