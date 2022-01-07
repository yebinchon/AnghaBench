
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec_tag; int codec_id; } ;
typedef TYPE_1__ AVCodecParameters ;


 int AV_CODEC_ID_FLASHSV ;
 int AV_CODEC_ID_FLASHSV2 ;
 int AV_CODEC_ID_FLV1 ;
 int AV_CODEC_ID_H264 ;
 int AV_CODEC_ID_VP6A ;
 int AV_CODEC_ID_VP6F ;






 int FLV_VIDEO_CODECID_MASK ;

__attribute__((used)) static int flv_same_video_codec(AVCodecParameters *vpar, int flags)
{
    int flv_codecid = flags & FLV_VIDEO_CODECID_MASK;

    if (!vpar->codec_id && !vpar->codec_tag)
        return 1;

    switch (flv_codecid) {
    case 133:
        return vpar->codec_id == AV_CODEC_ID_FLV1;
    case 131:
        return vpar->codec_id == AV_CODEC_ID_FLASHSV;
    case 130:
        return vpar->codec_id == AV_CODEC_ID_FLASHSV2;
    case 129:
        return vpar->codec_id == AV_CODEC_ID_VP6F;
    case 128:
        return vpar->codec_id == AV_CODEC_ID_VP6A;
    case 132:
        return vpar->codec_id == AV_CODEC_ID_H264;
    default:
        return vpar->codec_tag == flv_codecid;
    }
}
