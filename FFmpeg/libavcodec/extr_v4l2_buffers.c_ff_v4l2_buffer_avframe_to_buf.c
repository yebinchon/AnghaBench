
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int V4L2Buffer ;
struct TYPE_4__ {int pts; } ;
typedef TYPE_1__ AVFrame ;


 int v4l2_buffer_swframe_to_buf (TYPE_1__ const*,int *) ;
 int v4l2_set_pts (int *,int ) ;

int ff_v4l2_buffer_avframe_to_buf(const AVFrame *frame, V4L2Buffer *out)
{
    v4l2_set_pts(out, frame->pts);

    return v4l2_buffer_swframe_to_buf(frame, out);
}
