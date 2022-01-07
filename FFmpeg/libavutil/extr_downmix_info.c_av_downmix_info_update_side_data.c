
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ AVFrameSideData ;
typedef int AVFrame ;
typedef int AVDownmixInfo ;


 int AV_FRAME_DATA_DOWNMIX_INFO ;
 TYPE_1__* av_frame_get_side_data (int *,int ) ;
 TYPE_1__* av_frame_new_side_data (int *,int ,int) ;

AVDownmixInfo *av_downmix_info_update_side_data(AVFrame *frame)
{
    AVFrameSideData *side_data;

    side_data = av_frame_get_side_data(frame, AV_FRAME_DATA_DOWNMIX_INFO);

    if (!side_data)
        side_data = av_frame_new_side_data(frame, AV_FRAME_DATA_DOWNMIX_INFO,
                                           sizeof(AVDownmixInfo));

    if (!side_data)
        return ((void*)0);

    return (AVDownmixInfo*)side_data->data;
}
