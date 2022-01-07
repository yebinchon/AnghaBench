
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int MaxCLL; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int max_luminance; scalar_t__ has_luminance; } ;
typedef TYPE_1__ AVMasteringDisplayMetadata ;
typedef TYPE_2__ AVFrameSideData ;
typedef int AVFrame ;
typedef TYPE_3__ AVContentLightMetadata ;


 int AV_FRAME_DATA_CONTENT_LIGHT_LEVEL ;
 int AV_FRAME_DATA_MASTERING_DISPLAY_METADATA ;
 double REFERENCE_WHITE ;
 int av_d2q (double,int) ;
 TYPE_2__* av_frame_get_side_data (int *,int ) ;

void ff_update_hdr_metadata(AVFrame *in, double peak)
{
    AVFrameSideData *sd = av_frame_get_side_data(in, AV_FRAME_DATA_CONTENT_LIGHT_LEVEL);

    if (sd) {
        AVContentLightMetadata *clm = (AVContentLightMetadata *)sd->data;
        clm->MaxCLL = (unsigned)(peak * REFERENCE_WHITE);
    }

    sd = av_frame_get_side_data(in, AV_FRAME_DATA_MASTERING_DISPLAY_METADATA);
    if (sd) {
        AVMasteringDisplayMetadata *metadata = (AVMasteringDisplayMetadata *)sd->data;
        if (metadata->has_luminance)
            metadata->max_luminance = av_d2q(peak * REFERENCE_WHITE, 10000);
    }
}
