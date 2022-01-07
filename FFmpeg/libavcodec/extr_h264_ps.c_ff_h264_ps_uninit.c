
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sps; int * pps; int pps_ref; int sps_ref; int * pps_list; int * sps_list; } ;
typedef TYPE_1__ H264ParamSets ;


 int MAX_PPS_COUNT ;
 int MAX_SPS_COUNT ;
 int av_buffer_unref (int *) ;

void ff_h264_ps_uninit(H264ParamSets *ps)
{
    int i;

    for (i = 0; i < MAX_SPS_COUNT; i++)
        av_buffer_unref(&ps->sps_list[i]);

    for (i = 0; i < MAX_PPS_COUNT; i++)
        av_buffer_unref(&ps->pps_list[i]);

    av_buffer_unref(&ps->sps_ref);
    av_buffer_unref(&ps->pps_ref);

    ps->pps = ((void*)0);
    ps->sps = ((void*)0);
}
