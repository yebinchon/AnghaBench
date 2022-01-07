
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parent; } ;
struct TYPE_5__ {int * inputs; } ;
typedef TYPE_2__ FFFrameSync ;
typedef int AVFrame ;


 int av_frame_free (int **) ;
 int ff_framesync_dualinput_get (TYPE_2__*,int **,int **) ;
 int ff_inlink_make_frame_writable (int ,int **) ;

int ff_framesync_dualinput_get_writable(FFFrameSync *fs, AVFrame **f0, AVFrame **f1)
{
    int ret;

    ret = ff_framesync_dualinput_get(fs, f0, f1);
    if (ret < 0)
        return ret;
    ret = ff_inlink_make_frame_writable(fs->parent->inputs[0], f0);
    if (ret < 0) {
        av_frame_free(f0);
        *f1 = ((void*)0);
        return ret;
    }
    return 0;
}
