
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef int AVStereo3D ;
typedef TYPE_1__ AVFrameSideData ;
typedef int AVFrame ;


 int AV_FRAME_DATA_STEREO3D ;
 TYPE_1__* av_frame_new_side_data (int *,int ,int) ;
 int memset (scalar_t__,int ,int) ;

AVStereo3D *av_stereo3d_create_side_data(AVFrame *frame)
{
    AVFrameSideData *side_data = av_frame_new_side_data(frame,
                                                        AV_FRAME_DATA_STEREO3D,
                                                        sizeof(AVStereo3D));
    if (!side_data)
        return ((void*)0);

    memset(side_data->data, 0, sizeof(AVStereo3D));

    return (AVStereo3D *)side_data->data;
}
