
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
struct TYPE_13__ {int channels; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_11__ {scalar_t__ data; int size; } ;
struct TYPE_10__ {int bitstream_size; int max_framesize; int bitstream_index; int block_len; int skip; int* block; int level; int * bitstream; int gb; } ;
typedef TYPE_1__ InterplayACMContext ;
typedef int GetBitContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int FFMIN (int ,int) ;
 int decode_block (TYPE_1__*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int get_bits_count (int *) ;
 int init_get_bits8 (int *,int const*,int) ;
 int memcpy (int *,scalar_t__,int) ;
 int memmove (int *,int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data,
                        int *got_frame_ptr, AVPacket *pkt)
{
    InterplayACMContext *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    AVFrame *frame = data;
    const uint8_t *buf;
    int16_t *samples;
    int ret, n, buf_size, input_buf_size;

    if (!pkt->size && !s->bitstream_size) {
        *got_frame_ptr = 0;
        return 0;
    }

    buf_size = FFMIN(pkt->size, s->max_framesize - s->bitstream_size);
    input_buf_size = buf_size;
    if (s->bitstream_index + s->bitstream_size + buf_size > s->max_framesize) {
        memmove(s->bitstream, &s->bitstream[s->bitstream_index], s->bitstream_size);
        s->bitstream_index = 0;
    }
    if (pkt->data)
        memcpy(&s->bitstream[s->bitstream_index + s->bitstream_size], pkt->data, buf_size);
    buf = &s->bitstream[s->bitstream_index];
    buf_size += s->bitstream_size;
    s->bitstream_size = buf_size;
    if (buf_size < s->max_framesize && pkt->data) {
        *got_frame_ptr = 0;
        return input_buf_size;
    }

    if ((ret = init_get_bits8(gb, buf, buf_size)) < 0)
        return ret;

    frame->nb_samples = s->block_len / avctx->channels;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    skip_bits(gb, s->skip);
    ret = decode_block(s);
    if (ret < 0)
        return ret;

    samples = (int16_t *)frame->data[0];
    for (n = 0; n < frame->nb_samples * avctx->channels; n++) {
        int val = s->block[n] >> s->level;
        *samples++ = val;
    }

    *got_frame_ptr = 1;
    s->skip = get_bits_count(gb) - 8 * (get_bits_count(gb) / 8);
    n = get_bits_count(gb) / 8;

    if (n > buf_size && pkt->data) {
        s->bitstream_size = 0;
        s->bitstream_index = 0;
        return AVERROR_INVALIDDATA;
    }

    if (s->bitstream_size) {
        s->bitstream_index += n;
        s->bitstream_size -= n;
        return input_buf_size;
    }
    return n;
}
