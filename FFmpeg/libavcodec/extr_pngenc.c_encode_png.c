
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int flags; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_10__ {int bits_per_pixel; scalar_t__ bytestream_start; scalar_t__ bytestream; scalar_t__ bytestream_end; int zstream; } ;
typedef TYPE_1__ PNGEncContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_INPUT_BUFFER_MIN_SIZE ;
 int AV_PKT_FLAG_KEY ;
 int AV_WB64 (scalar_t__,int ) ;
 int ENOMEM ;
 size_t INT_MAX ;
 int IOBUF_SIZE ;
 int MKTAG (char,char,char,char) ;
 int PNGSIG ;
 int deflateBound (int *,int) ;
 int encode_frame (TYPE_3__*,int const*) ;
 int encode_headers (TYPE_3__*,int const*) ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_2__*,size_t,int ) ;
 int png_write_chunk (scalar_t__*,int ,int *,int ) ;

__attribute__((used)) static int encode_png(AVCodecContext *avctx, AVPacket *pkt,
                      const AVFrame *pict, int *got_packet)
{
    PNGEncContext *s = avctx->priv_data;
    int ret;
    int enc_row_size;
    size_t max_packet_size;

    enc_row_size = deflateBound(&s->zstream, (avctx->width * s->bits_per_pixel + 7) >> 3);
    max_packet_size =
        AV_INPUT_BUFFER_MIN_SIZE +
        avctx->height * (
            enc_row_size +
            12 * (((int64_t)enc_row_size + IOBUF_SIZE - 1) / IOBUF_SIZE)
        );
    if (max_packet_size > INT_MAX)
        return AVERROR(ENOMEM);
    ret = ff_alloc_packet2(avctx, pkt, max_packet_size, 0);
    if (ret < 0)
        return ret;

    s->bytestream_start =
    s->bytestream = pkt->data;
    s->bytestream_end = pkt->data + pkt->size;

    AV_WB64(s->bytestream, PNGSIG);
    s->bytestream += 8;

    ret = encode_headers(avctx, pict);
    if (ret < 0)
        return ret;

    ret = encode_frame(avctx, pict);
    if (ret < 0)
        return ret;

    png_write_chunk(&s->bytestream, MKTAG('I', 'E', 'N', 'D'), ((void*)0), 0);

    pkt->size = s->bytestream - s->bytestream_start;
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}
