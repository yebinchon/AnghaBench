
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_14__ {int channels; int sample_fmt; TYPE_1__* priv_data; } ;
struct TYPE_13__ {int nb_samples; int pts; scalar_t__* data; } ;
struct TYPE_12__ {int size; int duration; int pts; scalar_t__ data; } ;
struct TYPE_11__ {int samples_per_block; int block_size; int groups_per_block; int header; } ;
typedef int PutByteContext ;
typedef TYPE_1__ PCMDVDContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;




 int bytestream2_init_writer (int *,scalar_t__,int) ;
 int bytestream2_put_be16 (int *,int const) ;
 int bytestream2_put_byte (int *,int) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;
 int ff_samples_to_time_base (TYPE_4__*,int) ;
 int memcpy (scalar_t__,int ,int) ;

__attribute__((used)) static int pcm_dvd_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                                const AVFrame *frame, int *got_packet_ptr)
{
    PCMDVDContext *s = avctx->priv_data;
    int samples = frame->nb_samples * avctx->channels;
    int64_t pkt_size = (frame->nb_samples / s->samples_per_block) * s->block_size + 3;
    int blocks = (pkt_size - 3) / s->block_size;
    const int16_t *src16;
    const int32_t *src32;
    PutByteContext pb;
    int ret;

    if ((ret = ff_alloc_packet2(avctx, avpkt, pkt_size, 0)) < 0)
        return ret;

    memcpy(avpkt->data, s->header, 3);

    src16 = (const int16_t *)frame->data[0];
    src32 = (const int32_t *)frame->data[0];

    bytestream2_init_writer(&pb, avpkt->data + 3, avpkt->size - 3);

    switch (avctx->sample_fmt) {
    case 129:
        do {
            bytestream2_put_be16(&pb, *src16++);
        } while (--samples);
        break;
    case 128:
        if (avctx->channels == 1) {
            do {
                for (int i = 2; i; i--) {
                    bytestream2_put_be16(&pb, src32[0] >> 16);
                    bytestream2_put_be16(&pb, src32[1] >> 16);
                    bytestream2_put_byte(&pb, (*src32++) >> 24);
                    bytestream2_put_byte(&pb, (*src32++) >> 24);
                }
            } while (--blocks);
        } else {
            do {
                for (int i = s->groups_per_block; i; i--) {
                    bytestream2_put_be16(&pb, src32[0] >> 16);
                    bytestream2_put_be16(&pb, src32[1] >> 16);
                    bytestream2_put_be16(&pb, src32[2] >> 16);
                    bytestream2_put_be16(&pb, src32[3] >> 16);
                    bytestream2_put_byte(&pb, (*src32++) >> 24);
                    bytestream2_put_byte(&pb, (*src32++) >> 24);
                    bytestream2_put_byte(&pb, (*src32++) >> 24);
                    bytestream2_put_byte(&pb, (*src32++) >> 24);
                }
            } while (--blocks);
        }
        break;
    }

    avpkt->pts = frame->pts;
    avpkt->size = pkt_size;
    avpkt->duration = ff_samples_to_time_base(avctx, frame->nb_samples);
    *got_packet_ptr = 1;

    return 0;
}
