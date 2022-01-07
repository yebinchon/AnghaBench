
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__** outputs; } ;
struct TYPE_11__ {TYPE_3__* dst; } ;
struct TYPE_10__ {int pts; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int ff_filter_frame (TYPE_2__*,TYPE_1__*) ;
 int rescale_pts (TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];

    frame->pts = rescale_pts(inlink, outlink, frame->pts);

    return ff_filter_frame(outlink, frame);
}
