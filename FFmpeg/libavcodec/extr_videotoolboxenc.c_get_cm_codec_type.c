
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int CMVideoCodecType ;




 int kCMVideoCodecType_H264 ;
 int kCMVideoCodecType_HEVC ;

__attribute__((used)) static CMVideoCodecType get_cm_codec_type(enum AVCodecID id)
{
    switch (id) {
    case 129: return kCMVideoCodecType_H264;
    case 128: return kCMVideoCodecType_HEVC;
    default: return 0;
    }
}
