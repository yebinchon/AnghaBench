
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VdpDecoderProfile ;
struct TYPE_4__ {int level; int profile; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOTSUP ;
 int FF_PROFILE_H264_INTRA ;

 int VDP_DECODER_LEVEL_H264_1b ;
 int VDP_DECODER_PROFILE_H264_BASELINE ;
 int VDP_DECODER_PROFILE_H264_CONSTRAINED_BASELINE ;
 int VDP_DECODER_PROFILE_H264_EXTENDED ;
 int VDP_DECODER_PROFILE_H264_HIGH ;
 int VDP_DECODER_PROFILE_H264_HIGH_444_PREDICTIVE ;
 int VDP_DECODER_PROFILE_H264_MAIN ;
 int ff_vdpau_common_init (TYPE_1__*,int ,int) ;

__attribute__((used)) static int vdpau_h264_init(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;
    uint32_t level = avctx->level;

    switch (avctx->profile & ~FF_PROFILE_H264_INTRA) {
    case 136:
        profile = VDP_DECODER_PROFILE_H264_BASELINE;
        break;
    case 134:




    case 128:
        profile = VDP_DECODER_PROFILE_H264_MAIN;
        break;
    case 132:
        profile = VDP_DECODER_PROFILE_H264_HIGH;
        break;





    case 131:


        profile = VDP_DECODER_PROFILE_H264_HIGH;
        break;







    default:
        return AVERROR(ENOTSUP);
    }

    if ((avctx->profile & FF_PROFILE_H264_INTRA) && avctx->level == 11)
        level = VDP_DECODER_LEVEL_H264_1b;

    return ff_vdpau_common_init(avctx, profile, level);
}
