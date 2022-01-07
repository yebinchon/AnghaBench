
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int sample_rate; int * priv_data; } ;
struct TYPE_11__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_10__ {int* data; int size; } ;
typedef int NellyMoserDecodeContext ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int NELLY_BLOCK_LEN ;
 int NELLY_SAMPLES ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int* av_packet_get_side_data (TYPE_1__*,float,int *) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;
 int nelly_decode_block (int *,int const*,float*) ;

__attribute__((used)) static int decode_tag(AVCodecContext *avctx, void *data,
                      int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    const uint8_t *side=av_packet_get_side_data(avpkt, 'F', ((void*)0));
    int buf_size = avpkt->size;
    NellyMoserDecodeContext *s = avctx->priv_data;
    int blocks, i, ret;
    float *samples_flt;

    blocks = buf_size / NELLY_BLOCK_LEN;

    if (blocks <= 0) {
        av_log(avctx, AV_LOG_ERROR, "Packet is too small\n");
        return AVERROR_INVALIDDATA;
    }

    if (buf_size % NELLY_BLOCK_LEN) {
        av_log(avctx, AV_LOG_WARNING, "Leftover bytes: %d.\n",
               buf_size % NELLY_BLOCK_LEN);
    }







    if(side && blocks>1 && avctx->sample_rate%11025==0 && (1<<((side[0]>>2)&3)) == blocks)
        avctx->sample_rate= 11025*(blocks/2);


    frame->nb_samples = NELLY_SAMPLES * blocks;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    samples_flt = (float *)frame->data[0];

    for (i=0 ; i<blocks ; i++) {
        nelly_decode_block(s, buf, samples_flt);
        samples_flt += NELLY_SAMPLES;
        buf += NELLY_BLOCK_LEN;
    }

    *got_frame_ptr = 1;

    return buf_size;
}
