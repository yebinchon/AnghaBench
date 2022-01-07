
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int frame_count_out; TYPE_1__* dst; } ;
struct TYPE_6__ {int frame_step; } ;
struct TYPE_5__ {int * outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ FrameStepContext ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int av_frame_free (int **) ;
 int ff_filter_frame (int ,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *ref)
{
    FrameStepContext *framestep = inlink->dst->priv;

    if (!(inlink->frame_count_out % framestep->frame_step)) {
        return ff_filter_frame(inlink->dst->outputs[0], ref);
    } else {
        av_frame_free(&ref);
        return 0;
    }
}
