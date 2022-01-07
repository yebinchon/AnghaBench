
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {double MaxCLL; } ;
struct TYPE_10__ {scalar_t__ color_trc; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int max_luminance; scalar_t__ has_luminance; } ;
typedef TYPE_1__ AVMasteringDisplayMetadata ;
typedef TYPE_2__ AVFrameSideData ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVContentLightMetadata ;


 scalar_t__ AVCOL_TRC_SMPTE2084 ;
 int AV_FRAME_DATA_CONTENT_LIGHT_LEVEL ;
 int AV_FRAME_DATA_MASTERING_DISPLAY_METADATA ;
 double REFERENCE_WHITE ;
 TYPE_2__* av_frame_get_side_data (TYPE_3__*,int ) ;
 double av_q2d (int ) ;

double ff_determine_signal_peak(AVFrame *in)
{
    AVFrameSideData *sd = av_frame_get_side_data(in, AV_FRAME_DATA_CONTENT_LIGHT_LEVEL);
    double peak = 0;

    if (sd) {
        AVContentLightMetadata *clm = (AVContentLightMetadata *)sd->data;
        peak = clm->MaxCLL / REFERENCE_WHITE;
    }

    sd = av_frame_get_side_data(in, AV_FRAME_DATA_MASTERING_DISPLAY_METADATA);
    if (!peak && sd) {
        AVMasteringDisplayMetadata *metadata = (AVMasteringDisplayMetadata *)sd->data;
        if (metadata->has_luminance)
            peak = av_q2d(metadata->max_luminance) / REFERENCE_WHITE;
    }



    if (!peak)
        peak = in->color_trc == AVCOL_TRC_SMPTE2084 ? 100.0f : 10.0f;

    return peak;
}
