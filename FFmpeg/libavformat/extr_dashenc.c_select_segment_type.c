
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef scalar_t__ SegmentType ;


 int AV_CODEC_ID_OPUS ;
 int AV_CODEC_ID_VORBIS ;
 int AV_CODEC_ID_VP8 ;
 int AV_CODEC_ID_VP9 ;
 scalar_t__ SEGMENT_TYPE_AUTO ;
 scalar_t__ SEGMENT_TYPE_MP4 ;
 scalar_t__ SEGMENT_TYPE_WEBM ;

__attribute__((used)) static inline SegmentType select_segment_type(SegmentType segment_type, enum AVCodecID codec_id)
{
    if (segment_type == SEGMENT_TYPE_AUTO) {
        if (codec_id == AV_CODEC_ID_OPUS || codec_id == AV_CODEC_ID_VORBIS ||
            codec_id == AV_CODEC_ID_VP8 || codec_id == AV_CODEC_ID_VP9) {
            segment_type = SEGMENT_TYPE_WEBM;
        } else {
            segment_type = SEGMENT_TYPE_MP4;
        }
    }

    return segment_type;
}
