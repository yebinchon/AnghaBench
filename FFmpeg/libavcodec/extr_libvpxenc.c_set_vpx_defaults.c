
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vpx_codec_enc_cfg {int dummy; } ;
struct TYPE_5__ {scalar_t__ codec_id; int bit_rate; } ;
typedef TYPE_1__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_VP9 ;
 int av_assert0 (int) ;
 int set_vp8_defaults (TYPE_1__*,struct vpx_codec_enc_cfg*) ;
 int set_vp9_defaults (TYPE_1__*,struct vpx_codec_enc_cfg*) ;

__attribute__((used)) static void set_vpx_defaults(AVCodecContext *avctx,
                             struct vpx_codec_enc_cfg *enccfg)
{
    av_assert0(!avctx->bit_rate);






    set_vp8_defaults(avctx, enccfg);
}
