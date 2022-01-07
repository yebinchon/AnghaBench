
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_13__ {int block_align; TYPE_1__* priv_data; } ;
struct TYPE_12__ {scalar_t__* data; } ;
struct TYPE_11__ {int data; } ;
struct TYPE_10__ {int codec; } ;
typedef TYPE_1__ LibCodec2Context ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int codec2_encode (int ,int ,int *) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static int libcodec2_encode(AVCodecContext *avctx, AVPacket *avpkt,
                            const AVFrame *frame, int *got_packet_ptr)
{
    LibCodec2Context *c2 = avctx->priv_data;
    int16_t *samples = (int16_t *)frame->data[0];

    int ret = ff_alloc_packet2(avctx, avpkt, avctx->block_align, 0);
    if (ret < 0) {
        return ret;
    }

    codec2_encode(c2->codec, avpkt->data, samples);
    *got_packet_ptr = 1;

    return 0;
}
