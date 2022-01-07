
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * outputs; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
typedef TYPE_1__ FFFrameSync ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterContext ;


 int * blend_frame (TYPE_2__*,int *,int *) ;
 int ff_filter_frame (int ,int *) ;
 int ff_framesync_dualinput_get (TYPE_1__*,int **,int **) ;

__attribute__((used)) static int blend_frame_for_dualinput(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFrame *top_buf, *bottom_buf, *dst_buf;
    int ret;

    ret = ff_framesync_dualinput_get(fs, &top_buf, &bottom_buf);
    if (ret < 0)
        return ret;
    if (!bottom_buf)
        return ff_filter_frame(ctx->outputs[0], top_buf);
    dst_buf = blend_frame(ctx, top_buf, bottom_buf);
    return ff_filter_frame(ctx->outputs[0], dst_buf);
}
