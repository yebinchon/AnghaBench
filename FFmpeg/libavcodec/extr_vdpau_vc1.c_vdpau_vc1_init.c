
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VdpDecoderProfile ;
struct TYPE_4__ {int profile; int level; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOTSUP ;



 int VDP_DECODER_PROFILE_VC1_ADVANCED ;
 int VDP_DECODER_PROFILE_VC1_MAIN ;
 int VDP_DECODER_PROFILE_VC1_SIMPLE ;
 int ff_vdpau_common_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int vdpau_vc1_init(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;

    switch (avctx->profile) {
    case 128:
        profile = VDP_DECODER_PROFILE_VC1_SIMPLE;
        break;
    case 129:
        profile = VDP_DECODER_PROFILE_VC1_MAIN;
        break;
    case 130:
        profile = VDP_DECODER_PROFILE_VC1_ADVANCED;
        break;
    default:
        return AVERROR(ENOTSUP);
    }

    return ff_vdpau_common_init(avctx, profile, avctx->level);
}
