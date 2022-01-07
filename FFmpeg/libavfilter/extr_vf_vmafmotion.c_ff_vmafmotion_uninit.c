
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double nb_frames; double motion_sum; int temp_data; int * blur_data; } ;
typedef TYPE_1__ VMAFMotionData ;


 int av_free (int ) ;

double ff_vmafmotion_uninit(VMAFMotionData *s)
{
    av_free(s->blur_data[0]);
    av_free(s->blur_data[1]);
    av_free(s->temp_data);

    return s->nb_frames > 0 ? s->motion_sum / s->nb_frames : 0.0;
}
