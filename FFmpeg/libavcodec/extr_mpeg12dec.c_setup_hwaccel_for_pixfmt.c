
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ idct_algo; scalar_t__ pix_fmt; TYPE_2__* priv_data; scalar_t__ hwaccel; } ;
struct TYPE_5__ {int pack_pblocks; } ;
struct TYPE_6__ {TYPE_1__ mpeg_enc_ctx; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg1Context ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_XVMC ;
 scalar_t__ FF_IDCT_AUTO ;
 scalar_t__ FF_IDCT_NONE ;

__attribute__((used)) static void setup_hwaccel_for_pixfmt(AVCodecContext *avctx)
{

    if (avctx->hwaccel)
        if (avctx->idct_algo == FF_IDCT_AUTO)
            avctx->idct_algo = FF_IDCT_NONE;

    if (avctx->hwaccel && avctx->pix_fmt == AV_PIX_FMT_XVMC) {
        Mpeg1Context *s1 = avctx->priv_data;
        MpegEncContext *s = &s1->mpeg_enc_ctx;

        s->pack_pblocks = 1;
    }
}
