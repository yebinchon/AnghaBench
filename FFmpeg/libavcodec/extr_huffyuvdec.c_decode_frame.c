
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_13__ {void* f; } ;
typedef TYPE_2__ ThreadFrame ;
struct TYPE_16__ {scalar_t__ codec_id; TYPE_3__* priv_data; } ;
struct TYPE_15__ {int size; int * data; } ;
struct TYPE_12__ {int (* bswap_buf ) (int *,int const*,int) ;} ;
struct TYPE_14__ {int width; int height; int gb; scalar_t__ bitstream_buffer; TYPE_1__ bdsp; scalar_t__ chroma_v_shift; scalar_t__ last_slice_end; scalar_t__ context; int bitstream_buffer_size; } ;
typedef TYPE_3__ HYuvContext ;
typedef TYPE_4__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_HYMT ;
 void* AV_RL32 (int *) ;
 int ENOMEM ;
 int INT_MAX ;
 int av_fast_padded_malloc (scalar_t__*,int *,int) ;
 int decode_slice (TYPE_5__*,int * const,int,int,int,int) ;
 int emms_c () ;
 int ff_thread_get_buffer (TYPE_5__*,TYPE_2__*,int ) ;
 int get_bits_count (int *) ;
 int read_huffman_tables (TYPE_3__*,scalar_t__,int) ;
 int stub1 (int *,int const*,int) ;
 int stub2 (int *,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    HYuvContext *s = avctx->priv_data;
    const int width = s->width;
    const int height = s->height;
    ThreadFrame frame = { .f = data };
    AVFrame *const p = data;
    int slice, table_size = 0, ret, nb_slices;
    unsigned slices_info_offset;
    int slice_height;

    if (buf_size < (width * height + 7)/8)
        return AVERROR_INVALIDDATA;

    av_fast_padded_malloc(&s->bitstream_buffer,
                   &s->bitstream_buffer_size,
                   buf_size);
    if (!s->bitstream_buffer)
        return AVERROR(ENOMEM);

    s->bdsp.bswap_buf((uint32_t *) s->bitstream_buffer,
                      (const uint32_t *) buf, buf_size / 4);

    if ((ret = ff_thread_get_buffer(avctx, &frame, 0)) < 0)
        return ret;

    if (s->context) {
        table_size = read_huffman_tables(s, s->bitstream_buffer, buf_size);
        if (table_size < 0)
            return table_size;
    }

    if ((unsigned) (buf_size - table_size) >= INT_MAX / 8)
        return AVERROR_INVALIDDATA;

    s->last_slice_end = 0;

    if (avctx->codec_id == AV_CODEC_ID_HYMT &&
        (buf_size > 32 && AV_RL32(avpkt->data + buf_size - 16) == 0)) {
        slices_info_offset = AV_RL32(avpkt->data + buf_size - 4);
        slice_height = AV_RL32(avpkt->data + buf_size - 8);
        nb_slices = AV_RL32(avpkt->data + buf_size - 12);
        if (nb_slices * 8LL + slices_info_offset > buf_size - 16 ||
            s->chroma_v_shift ||
            slice_height <= 0 || nb_slices * (uint64_t)slice_height > height)
            return AVERROR_INVALIDDATA;
    } else {
        slice_height = height;
        nb_slices = 1;
    }

    for (slice = 0; slice < nb_slices; slice++) {
        int y_offset, slice_offset, slice_size;

        if (nb_slices > 1) {
            slice_offset = AV_RL32(avpkt->data + slices_info_offset + slice * 8);
            slice_size = AV_RL32(avpkt->data + slices_info_offset + slice * 8 + 4);

            if (slice_offset < 0 || slice_size <= 0 || (slice_offset&3) ||
                slice_offset + (int64_t)slice_size > buf_size)
                return AVERROR_INVALIDDATA;

            y_offset = height - (slice + 1) * slice_height;
            s->bdsp.bswap_buf((uint32_t *)s->bitstream_buffer,
                              (const uint32_t *)(buf + slice_offset), slice_size / 4);
        } else {
            y_offset = 0;
            slice_offset = 0;
            slice_size = buf_size;
        }

        ret = decode_slice(avctx, p, slice_height, slice_size, y_offset, table_size);
        emms_c();
        if (ret < 0)
            return ret;
    }

    *got_frame = 1;

    return (get_bits_count(&s->gb) + 31) / 32 * 4 + table_size;
}
