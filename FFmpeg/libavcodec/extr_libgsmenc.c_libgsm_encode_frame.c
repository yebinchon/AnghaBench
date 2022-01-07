
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct gsm_state {int dummy; } ;
typedef int gsm_signal ;
struct TYPE_11__ {int codec_id; int block_align; struct gsm_state* priv_data; } ;
struct TYPE_10__ {scalar_t__* data; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;




 int GSM_FRAME_SIZE ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int ,int ) ;
 int gsm_encode (struct gsm_state*,int *,int ) ;

__attribute__((used)) static int libgsm_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                               const AVFrame *frame, int *got_packet_ptr)
{
    int ret;
    gsm_signal *samples = (gsm_signal *)frame->data[0];
    struct gsm_state *state = avctx->priv_data;

    if ((ret = ff_alloc_packet2(avctx, avpkt, avctx->block_align, 0)) < 0)
        return ret;

    switch(avctx->codec_id) {
    case 129:
        gsm_encode(state, samples, avpkt->data);
        break;
    case 128:
        gsm_encode(state, samples, avpkt->data);
        gsm_encode(state, samples + GSM_FRAME_SIZE, avpkt->data + 32);
    }

    *got_packet_ptr = 1;
    return 0;
}
