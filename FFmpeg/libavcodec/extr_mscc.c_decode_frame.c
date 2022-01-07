
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_18__ {int avail_in; int total_out; int avail_out; int next_out; int * next_in; } ;
struct TYPE_17__ {scalar_t__ codec_id; scalar_t__ pix_fmt; int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_16__ {int palette_has_changed; int* linesize; int key_frame; int pict_type; scalar_t__* data; } ;
struct TYPE_15__ {int size; int * data; } ;
struct TYPE_14__ {int* pal; int* uncomp_buf; int bpp; int uncomp_size; TYPE_6__ zstream; int decomp_buf; int decomp_size; } ;
typedef int PutByteContext ;
typedef TYPE_1__ MSCCContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_UNKNOWN ;
 int AVPALETTE_SIZE ;
 scalar_t__ AV_CODEC_ID_MSCC ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int AV_PKT_DATA_PALETTE ;
 int AV_RL32 (int const*) ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int av_log (TYPE_4__*,int ,char*,int) ;
 int * av_packet_get_side_data (TYPE_2__*,int ,int*) ;
 int bytestream2_init (int *,int ,int ) ;
 int bytestream2_init_writer (int *,int*,int ) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int inflate (TYPE_6__*,int ) ;
 int inflateReset (TYPE_6__*) ;
 int memcpy (scalar_t__,int*,int) ;
 int rle_uncompress (TYPE_4__*,int *,int *) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    MSCCContext *s = avctx->priv_data;
    AVFrame *frame = data;
    uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    GetByteContext gb;
    PutByteContext pb;
    int ret, j;

    if (avpkt->size < 3)
        return buf_size;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    if (avctx->codec_id == AV_CODEC_ID_MSCC) {
        avpkt->data[2] ^= avpkt->data[0];
        buf += 2;
        buf_size -= 2;
    }

    if (avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        int size;
        const uint8_t *pal = av_packet_get_side_data(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            frame->palette_has_changed = 1;
            for (j = 0; j < 256; j++)
                s->pal[j] = 0xFF000000 | AV_RL32(pal + j * 4);
        } else if (pal) {
            av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }
        memcpy(frame->data[1], s->pal, AVPALETTE_SIZE);
    }

    ret = inflateReset(&s->zstream);
    if (ret != Z_OK) {
        av_log(avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", ret);
        return AVERROR_UNKNOWN;
    }
    s->zstream.next_in = buf;
    s->zstream.avail_in = buf_size;
    s->zstream.next_out = s->decomp_buf;
    s->zstream.avail_out = s->decomp_size;
    ret = inflate(&s->zstream, Z_FINISH);
    if (ret != Z_STREAM_END) {
        av_log(avctx, AV_LOG_ERROR, "Inflate error: %d\n", ret);
        return AVERROR_UNKNOWN;
    }

    bytestream2_init(&gb, s->decomp_buf, s->zstream.total_out);
    bytestream2_init_writer(&pb, s->uncomp_buf, s->uncomp_size);

    ret = rle_uncompress(avctx, &gb, &pb);
    if (ret)
        return ret;

    for (j = 0; j < avctx->height; j++) {
        memcpy(frame->data[0] + (avctx->height - j - 1) * frame->linesize[0],
               s->uncomp_buf + s->bpp * j * avctx->width, s->bpp * avctx->width);
    }

    frame->key_frame = 1;
    frame->pict_type = AV_PICTURE_TYPE_I;

    *got_frame = 1;

    return avpkt->size;
}
