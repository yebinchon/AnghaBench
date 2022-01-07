
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_16__ {int channels; int frame_size; TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__* data; } ;
struct TYPE_14__ {int size; int duration; int pts; int data; } ;
struct TYPE_12__ {int frame_size; } ;
struct TYPE_13__ {int pkt_frame_count; int frames_per_packet; int afq; int bits; int enc_state; TYPE_1__ header; } ;
typedef TYPE_2__ LibSpeexEncContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int ff_af_queue_add (int *,TYPE_4__ const*) ;
 int ff_af_queue_remove (int *,int,int *,int *) ;
 int ff_alloc_packet2 (TYPE_5__*,TYPE_3__*,int ,int ) ;
 int speex_bits_nbytes (int *) ;
 int speex_bits_pack (int *,int,int) ;
 int speex_bits_reset (int *) ;
 int speex_bits_write (int *,int ,int) ;
 int speex_encode_int (int ,int *,int *) ;
 int speex_encode_stereo_int (int *,int ,int *) ;

__attribute__((used)) static int encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                        const AVFrame *frame, int *got_packet_ptr)
{
    LibSpeexEncContext *s = avctx->priv_data;
    int16_t *samples = frame ? (int16_t *)frame->data[0] : ((void*)0);
    int ret;

    if (samples) {

        if (avctx->channels == 2)
            speex_encode_stereo_int(samples, s->header.frame_size, &s->bits);
        speex_encode_int(s->enc_state, samples, &s->bits);
        s->pkt_frame_count++;
        if ((ret = ff_af_queue_add(&s->afq, frame)) < 0)
            return ret;
    } else {

        if (!s->pkt_frame_count)
            return 0;

        while (s->pkt_frame_count < s->frames_per_packet) {
            speex_bits_pack(&s->bits, 15, 5);
            s->pkt_frame_count++;
        }
    }


    if (s->pkt_frame_count == s->frames_per_packet) {
        s->pkt_frame_count = 0;
        if ((ret = ff_alloc_packet2(avctx, avpkt, speex_bits_nbytes(&s->bits), 0)) < 0)
            return ret;
        ret = speex_bits_write(&s->bits, avpkt->data, avpkt->size);
        speex_bits_reset(&s->bits);


        ff_af_queue_remove(&s->afq, s->frames_per_packet * avctx->frame_size,
                           &avpkt->pts, &avpkt->duration);

        avpkt->size = ret;
        *got_packet_ptr = 1;
        return 0;
    }
    return 0;
}
