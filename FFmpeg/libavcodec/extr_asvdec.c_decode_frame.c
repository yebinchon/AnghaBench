
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int (* bswap_buf ) (int *,int const*,int) ;} ;
struct TYPE_17__ {long long mb_height; long long mb_width; int mb_height2; int mb_width2; int gb; int block; int * bitstream_buffer; TYPE_1__ bbdsp; int bitstream_buffer_size; } ;
struct TYPE_16__ {scalar_t__ codec_id; TYPE_5__* priv_data; } ;
struct TYPE_15__ {int key_frame; int pict_type; } ;
struct TYPE_14__ {size_t* data; int size; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ ASV1Context ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_ASV1 ;
 int AV_PICTURE_TYPE_I ;
 int ENOMEM ;
 int av_fast_padded_malloc (int **,int *,int) ;
 int decode_mb (TYPE_5__* const,int ) ;
 int emms_c () ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__* const,int ) ;
 int * ff_reverse ;
 int get_bits_count (int *) ;
 int idct_put (TYPE_5__* const,TYPE_3__* const,int,int) ;
 int init_get_bits (int *,int *,int) ;
 int stub1 (int *,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    ASV1Context *const a = avctx->priv_data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    AVFrame *const p = data;
    int mb_x, mb_y, ret;

    if (buf_size * 8LL < a->mb_height * a->mb_width * 13LL)
        return AVERROR_INVALIDDATA;

    if ((ret = ff_get_buffer(avctx, p, 0)) < 0)
        return ret;
    p->pict_type = AV_PICTURE_TYPE_I;
    p->key_frame = 1;

    av_fast_padded_malloc(&a->bitstream_buffer, &a->bitstream_buffer_size,
                          buf_size);
    if (!a->bitstream_buffer)
        return AVERROR(ENOMEM);

    if (avctx->codec_id == AV_CODEC_ID_ASV1) {
        a->bbdsp.bswap_buf((uint32_t *) a->bitstream_buffer,
                           (const uint32_t *) buf, buf_size / 4);
    } else {
        int i;
        for (i = 0; i < buf_size; i++)
            a->bitstream_buffer[i] = ff_reverse[buf[i]];
    }

    init_get_bits(&a->gb, a->bitstream_buffer, buf_size * 8);

    for (mb_y = 0; mb_y < a->mb_height2; mb_y++) {
        for (mb_x = 0; mb_x < a->mb_width2; mb_x++) {
            if ((ret = decode_mb(a, a->block)) < 0)
                return ret;

            idct_put(a, p, mb_x, mb_y);
        }
    }

    if (a->mb_width2 != a->mb_width) {
        mb_x = a->mb_width2;
        for (mb_y = 0; mb_y < a->mb_height2; mb_y++) {
            if ((ret = decode_mb(a, a->block)) < 0)
                return ret;

            idct_put(a, p, mb_x, mb_y);
        }
    }

    if (a->mb_height2 != a->mb_height) {
        mb_y = a->mb_height2;
        for (mb_x = 0; mb_x < a->mb_width; mb_x++) {
            if ((ret = decode_mb(a, a->block)) < 0)
                return ret;

            idct_put(a, p, mb_x, mb_y);
        }
    }

    *got_frame = 1;

    emms_c();

    return (get_bits_count(&a->gb) + 31) / 32 * 4;
}
