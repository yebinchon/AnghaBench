
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* dst; } ;
struct TYPE_6__ {size_t select_out; scalar_t__ select; } ;
typedef TYPE_1__ SelectContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int av_frame_free (int **) ;
 int ff_filter_frame (int ,int *) ;
 int select_frame (TYPE_3__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    SelectContext *select = ctx->priv;

    select_frame(ctx, frame);
    if (select->select)
        return ff_filter_frame(ctx->outputs[select->select_out], frame);

    av_frame_free(&frame);
    return 0;
}
