
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




 int VDP_DECODER_PROFILE_VP9_PROFILE_0 ;
 int VDP_DECODER_PROFILE_VP9_PROFILE_1 ;
 int VDP_DECODER_PROFILE_VP9_PROFILE_2 ;
 int VDP_DECODER_PROFILE_VP9_PROFILE_3 ;
 int ff_vdpau_common_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int vdpau_vp9_init(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;
    uint32_t level = avctx->level;

    switch (avctx->profile) {
    case 131:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_0;
        break;
    case 130:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_1;
        break;
    case 129:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_2;
        break;
    case 128:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_3;
        break;
    default:
        return AVERROR(ENOTSUP);
    }

    return ff_vdpau_common_init(avctx, profile, level);
}
