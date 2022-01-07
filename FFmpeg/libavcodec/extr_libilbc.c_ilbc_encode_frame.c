
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__* data; } ;
struct TYPE_13__ {int size; scalar_t__ data; } ;
struct TYPE_11__ {int no_of_bytes; } ;
struct TYPE_12__ {TYPE_10__ encoder; } ;
typedef TYPE_1__ ILBCEncContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int WebRtcIlbcfix_EncodeImpl (int *,int const*,TYPE_10__*) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;

__attribute__((used)) static int ilbc_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    ILBCEncContext *s = avctx->priv_data;
    int ret;

    if ((ret = ff_alloc_packet2(avctx, avpkt, 50, 0)) < 0)
        return ret;

    WebRtcIlbcfix_EncodeImpl((uint16_t *) avpkt->data, (const int16_t *) frame->data[0], &s->encoder);

    avpkt->size = s->encoder.no_of_bytes;
    *got_packet_ptr = 1;
    return 0;
}
