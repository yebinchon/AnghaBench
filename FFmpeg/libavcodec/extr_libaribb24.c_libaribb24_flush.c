
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags2; TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ read_order; } ;
typedef TYPE_1__ Libaribb24Context ;
typedef TYPE_2__ AVCodecContext ;


 int AV_CODEC_FLAG2_RO_FLUSH_NOOP ;

__attribute__((used)) static void libaribb24_flush(AVCodecContext *avctx)
{
    Libaribb24Context *b24 = avctx->priv_data;
    if (!(avctx->flags2 & AV_CODEC_FLAG2_RO_FLUSH_NOOP))
        b24->read_order = 0;
}
