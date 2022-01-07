
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags2; TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ readorder; } ;
typedef TYPE_1__ SAMIContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_CODEC_FLAG2_RO_FLUSH_NOOP ;

__attribute__((used)) static void sami_flush(AVCodecContext *avctx)
{
    SAMIContext *sami = avctx->priv_data;
    if (!(avctx->flags2 & AV_CODEC_FLAG2_RO_FLUSH_NOOP))
        sami->readorder = 0;
}
