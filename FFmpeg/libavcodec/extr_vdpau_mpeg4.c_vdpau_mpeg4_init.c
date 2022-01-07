
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



 int VDP_DECODER_PROFILE_MPEG4_PART2_ASP ;
 int VDP_DECODER_PROFILE_MPEG4_PART2_SP ;
 int ff_vdpau_common_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int vdpau_mpeg4_init(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;

    switch (avctx->profile) {
    case 129:
        profile = VDP_DECODER_PROFILE_MPEG4_PART2_SP;
        break;


    case 128:
    case 130:
        profile = VDP_DECODER_PROFILE_MPEG4_PART2_ASP;
        break;
    default:
        return AVERROR(ENOTSUP);
    }

    return ff_vdpau_common_init(avctx, profile, avctx->level);
}
