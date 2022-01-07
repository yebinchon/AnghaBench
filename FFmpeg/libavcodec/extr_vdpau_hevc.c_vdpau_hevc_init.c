
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VdpDecoderProfile ;
struct TYPE_4__ {int profile; int level; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOTSUP ;




 int VDP_DECODER_PROFILE_HEVC_MAIN ;
 int VDP_DECODER_PROFILE_HEVC_MAIN_10 ;
 int VDP_DECODER_PROFILE_HEVC_MAIN_444 ;
 int VDP_DECODER_PROFILE_HEVC_MAIN_STILL ;
 int ff_vdpau_common_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int vdpau_hevc_init(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;
    uint32_t level = avctx->level;

    switch (avctx->profile) {
    case 131:
        profile = VDP_DECODER_PROFILE_HEVC_MAIN;
        break;
    case 130:
        profile = VDP_DECODER_PROFILE_HEVC_MAIN_10;
        break;
    case 129:
        profile = VDP_DECODER_PROFILE_HEVC_MAIN_STILL;
        break;
    case 128:
        profile = VDP_DECODER_PROFILE_HEVC_MAIN_444;
        break;
    default:
        return AVERROR(ENOTSUP);
    }

    return ff_vdpau_common_init(avctx, profile, level);
}
