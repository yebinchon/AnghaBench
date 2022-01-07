
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec_id; } ;
typedef int MppCodingType ;
typedef TYPE_1__ AVCodecContext ;






 int MPP_VIDEO_CodingAVC ;
 int MPP_VIDEO_CodingHEVC ;
 int MPP_VIDEO_CodingUnused ;
 int MPP_VIDEO_CodingVP8 ;
 int MPP_VIDEO_CodingVP9 ;

__attribute__((used)) static MppCodingType rkmpp_get_codingtype(AVCodecContext *avctx)
{
    switch (avctx->codec_id) {
    case 131: return MPP_VIDEO_CodingAVC;
    case 130: return MPP_VIDEO_CodingHEVC;
    case 129: return MPP_VIDEO_CodingVP8;
    case 128: return MPP_VIDEO_CodingVP9;
    default: return MPP_VIDEO_CodingUnused;
    }
}
