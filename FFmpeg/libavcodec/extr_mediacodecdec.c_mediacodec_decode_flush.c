
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int ctx; int buffered_pkt; } ;
typedef TYPE_1__ MediaCodecH264DecContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_packet_unref (int *) ;
 int ff_mediacodec_dec_flush (TYPE_2__*,int ) ;

__attribute__((used)) static void mediacodec_decode_flush(AVCodecContext *avctx)
{
    MediaCodecH264DecContext *s = avctx->priv_data;

    av_packet_unref(&s->buffered_pkt);

    ff_mediacodec_dec_flush(avctx, s->ctx);
}
