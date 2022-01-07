
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * outputs; } ;
struct TYPE_5__ {TYPE_2__* dst; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int do_vmafmotion (TYPE_2__*,int *) ;
 int ff_filter_frame (int ,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *ref)
{
    AVFilterContext *ctx = inlink->dst;
    do_vmafmotion(ctx, ref);
    return ff_filter_frame(ctx->outputs[0], ref);
}
