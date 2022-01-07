
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_13__ {int channels; int bit_rate; int sample_fmt; TYPE_1__* priv_data; } ;
struct TYPE_12__ {scalar_t__* data; int nb_samples; } ;
struct TYPE_11__ {int size; int * data; } ;
struct TYPE_10__ {int pktsize; int dec_state; int stereo; int frame_size; int bits; } ;
typedef TYPE_1__ LibSpeexContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_S16 ;
 int SPEEX_GET_BITRATE ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int speex_bits_peek_unsigned (int *,int) ;
 int speex_bits_read_from (int *,int *,int) ;
 int speex_bits_remaining (int *) ;
 int speex_decode_int (int ,int *,int *) ;
 int speex_decode_stereo_int (int *,int ,int *) ;
 int speex_decoder_ctl (int ,int ,int *) ;

__attribute__((used)) static int libspeex_decode_frame(AVCodecContext *avctx, void *data,
                                 int *got_frame_ptr, AVPacket *avpkt)
{
    uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    LibSpeexContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int16_t *output;
    int ret, consumed = 0;
    avctx->sample_fmt = AV_SAMPLE_FMT_S16;


    frame->nb_samples = s->frame_size;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    output = (int16_t *)frame->data[0];





    if (speex_bits_remaining(&s->bits) < 5 ||
        speex_bits_peek_unsigned(&s->bits, 5) == 0xF) {

        if (!buf || !buf_size) {
            *got_frame_ptr = 0;
            return buf_size;
        }
        if (s->pktsize && buf_size == 62)
            buf_size = s->pktsize;

        speex_bits_read_from(&s->bits, buf, buf_size);
        consumed = avpkt->size;
    }


    ret = speex_decode_int(s->dec_state, &s->bits, output);
    if (ret <= -2) {
        av_log(avctx, AV_LOG_ERROR, "Error decoding Speex frame.\n");
        return AVERROR_INVALIDDATA;
    }
    if (avctx->channels == 2)
        speex_decode_stereo_int(output, s->frame_size, &s->stereo);

    *got_frame_ptr = 1;

    if (!avctx->bit_rate)
        speex_decoder_ctl(s->dec_state, SPEEX_GET_BITRATE, &avctx->bit_rate);
    return consumed;
}
