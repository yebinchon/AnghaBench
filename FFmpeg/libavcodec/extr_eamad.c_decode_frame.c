
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int64_t ;
struct TYPE_19__ {int num; int den; } ;
struct TYPE_24__ {int width; int height; TYPE_1__ framerate; TYPE_3__* priv_data; } ;
struct TYPE_23__ {int height; int* linesize; int ** data; } ;
struct TYPE_22__ {int size; int * data; } ;
struct TYPE_20__ {int (* bswap16_buf ) (scalar_t__,int const*,int) ;} ;
struct TYPE_21__ {int mb_y; int mb_x; TYPE_5__* last_frame; scalar_t__ bitstream_buf; int gb; TYPE_2__ bbdsp; int bitstream_buf_size; } ;
typedef TYPE_3__ MadContext ;
typedef int GetByteContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_GET_BUFFER_FLAG_REF ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int MADe_TAG ;
 int MADm_TAG ;
 int av_fast_padded_malloc (scalar_t__*,int *,int) ;
 int av_frame_ref (TYPE_5__*,TYPE_5__*) ;
 int av_frame_unref (TYPE_5__*) ;
 int av_log (TYPE_6__*,int ,char*) ;
 int av_reduce (int *,int *,int,int,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;
 int calc_quant_matrix (TYPE_3__*,int ) ;
 scalar_t__ decode_mb (TYPE_3__*,TYPE_5__*,int) ;
 int ff_get_buffer (TYPE_6__*,TYPE_5__*,int ) ;
 int ff_set_dimensions (TYPE_6__*,int,int) ;
 int init_get_bits (int *,scalar_t__,int) ;
 int memset (int *,int,int) ;
 int stub1 (scalar_t__,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MadContext *s = avctx->priv_data;
    AVFrame *frame = data;
    GetByteContext gb;
    int width, height;
    int chunk_type;
    int inter, ret;

    bytestream2_init(&gb, buf, buf_size);

    chunk_type = bytestream2_get_le32(&gb);
    inter = (chunk_type == MADm_TAG || chunk_type == MADe_TAG);
    bytestream2_skip(&gb, 10);

    av_reduce(&avctx->framerate.den, &avctx->framerate.num,
              bytestream2_get_le16(&gb), 1000, 1<<30);

    width = bytestream2_get_le16(&gb);
    height = bytestream2_get_le16(&gb);
    bytestream2_skip(&gb, 1);
    calc_quant_matrix(s, bytestream2_get_byte(&gb));
    bytestream2_skip(&gb, 2);

    if (bytestream2_get_bytes_left(&gb) < 2) {
        av_log(avctx, AV_LOG_ERROR, "Input data too small\n");
        return AVERROR_INVALIDDATA;
    }

    if (width < 16 || height < 16) {
        av_log(avctx, AV_LOG_ERROR, "Dimensions too small\n");
        return AVERROR_INVALIDDATA;
    }

    if (avctx->width != width || avctx->height != height) {
        av_frame_unref(s->last_frame);
        if((width * (int64_t)height)/2048*7 > bytestream2_get_bytes_left(&gb))
            return AVERROR_INVALIDDATA;
        if ((ret = ff_set_dimensions(avctx, width, height)) < 0)
            return ret;
    }

    if ((ret = ff_get_buffer(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    if (inter && !s->last_frame->data[0]) {
        av_log(avctx, AV_LOG_WARNING, "Missing reference frame.\n");
        ret = ff_get_buffer(avctx, s->last_frame, AV_GET_BUFFER_FLAG_REF);
        if (ret < 0)
            return ret;
        memset(s->last_frame->data[0], 0, s->last_frame->height *
               s->last_frame->linesize[0]);
        memset(s->last_frame->data[1], 0x80, s->last_frame->height / 2 *
               s->last_frame->linesize[1]);
        memset(s->last_frame->data[2], 0x80, s->last_frame->height / 2 *
               s->last_frame->linesize[2]);
    }

    av_fast_padded_malloc(&s->bitstream_buf, &s->bitstream_buf_size,
                          bytestream2_get_bytes_left(&gb));
    if (!s->bitstream_buf)
        return AVERROR(ENOMEM);
    s->bbdsp.bswap16_buf(s->bitstream_buf, (const uint16_t *)(buf + bytestream2_tell(&gb)),
                         bytestream2_get_bytes_left(&gb) / 2);
    memset((uint8_t*)s->bitstream_buf + bytestream2_get_bytes_left(&gb), 0, AV_INPUT_BUFFER_PADDING_SIZE);
    init_get_bits(&s->gb, s->bitstream_buf, 8*(bytestream2_get_bytes_left(&gb)));

    for (s->mb_y=0; s->mb_y < (avctx->height+15)/16; s->mb_y++)
        for (s->mb_x=0; s->mb_x < (avctx->width +15)/16; s->mb_x++)
            if(decode_mb(s, frame, inter) < 0)
                return AVERROR_INVALIDDATA;

    *got_frame = 1;

    if (chunk_type != MADe_TAG) {
        av_frame_unref(s->last_frame);
        if ((ret = av_frame_ref(s->last_frame, frame)) < 0)
            return ret;
    }

    return buf_size;
}
