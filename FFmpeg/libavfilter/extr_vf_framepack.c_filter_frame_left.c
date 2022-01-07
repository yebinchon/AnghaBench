
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* dst; } ;
struct TYPE_5__ {int ** input_views; } ;
typedef TYPE_1__ FramepackContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 size_t LEFT ;
 int try_push_frame (TYPE_3__*) ;

__attribute__((used)) static int filter_frame_left(AVFilterLink *inlink, AVFrame *frame)
{
    FramepackContext *s = inlink->dst->priv;
    s->input_views[LEFT] = frame;
    return try_push_frame(inlink->dst);
}
