
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int width; int height; size_t profile; scalar_t__ pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_16__ {int colorspace; int color_trc; int color_primaries; int interlaced_frame; scalar_t__ top_field_first; } ;
struct TYPE_15__ {int* data; int size; int flags; } ;
struct TYPE_14__ {char* vendor; scalar_t__ is_interlaced; } ;
typedef TYPE_1__ ProresContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_INPUT_BUFFER_MIN_SIZE ;
 int AV_LOG_DEBUG ;
 scalar_t__ AV_PIX_FMT_YUV444P10 ;
 int AV_PKT_FLAG_KEY ;
 int AV_WB32 (int*,int) ;
 int FFALIGN (int,int) ;
 size_t FF_PROFILE_PRORES_4444 ;
 char** QMAT_CHROMA ;
 char** QMAT_LUMA ;
 int av_log (TYPE_4__*,int ,char*) ;
 int bytestream_put_be16 (int**,int) ;
 int bytestream_put_be32 (int**,int) ;
 int bytestream_put_buffer (int**,char*,int) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;
 void* ff_int_from_list_or_default (TYPE_4__*,char*,int ,int ,int ) ;
 int prores_encode_picture (TYPE_4__*,TYPE_3__ const*,int*,int,int,int) ;
 int valid_colorspace ;
 int valid_primaries ;
 int valid_trc ;

__attribute__((used)) static int prores_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                               const AVFrame *pict, int *got_packet)
{
    ProresContext *ctx = avctx->priv_data;
    int header_size = 148;
    uint8_t *buf;
    int compress_frame_size, pic_size, ret, is_top_field_first = 0;
    uint8_t frame_flags;
    int frame_size = FFALIGN(avctx->width, 16) * FFALIGN(avctx->height, 16)*16 + 500 + AV_INPUT_BUFFER_MIN_SIZE;


    if ((ret = ff_alloc_packet2(avctx, pkt, frame_size + AV_INPUT_BUFFER_MIN_SIZE, 0)) < 0)
        return ret;

    buf = pkt->data;
    compress_frame_size = 8 + header_size;

    bytestream_put_be32(&buf, compress_frame_size);
    bytestream_put_buffer(&buf, "icpf", 4);

    bytestream_put_be16(&buf, header_size);
    bytestream_put_be16(&buf, 0);
    bytestream_put_buffer(&buf, ctx->vendor, 4);
    bytestream_put_be16(&buf, avctx->width);
    bytestream_put_be16(&buf, avctx->height);
    frame_flags = 0x82;
    if (avctx->profile >= FF_PROFILE_PRORES_4444)
        frame_flags |= 0x40;
    if (ctx->is_interlaced) {
        if (pict->top_field_first || !pict->interlaced_frame) {
            av_log(avctx, AV_LOG_DEBUG, "use interlaced encoding, top field first\n");
            frame_flags |= 0x04;
            is_top_field_first = 1;
        } else {
            av_log(avctx, AV_LOG_DEBUG, "use interlaced encoding, bottom field first\n");
            frame_flags |= 0x08;
        }
    } else {
        av_log(avctx, AV_LOG_DEBUG, "use progressive encoding\n");
    }
    *buf++ = frame_flags;
    *buf++ = 0;

    *buf++ = ff_int_from_list_or_default(avctx, "frame color primaries", pict->color_primaries, valid_primaries, 0);
    *buf++ = ff_int_from_list_or_default(avctx, "frame color trc", pict->color_trc, valid_trc, 0);
    *buf++ = ff_int_from_list_or_default(avctx, "frame colorspace", pict->colorspace, valid_colorspace, 0);
    if (avctx->profile >= FF_PROFILE_PRORES_4444) {
        if (avctx->pix_fmt == AV_PIX_FMT_YUV444P10) {
            *buf++ = 0xA0;
        } else {
            *buf++ = 0xA2;
        }
    } else {
        *buf++ = 32;
    }
    *buf++ = 0;
    *buf++ = 3;

    bytestream_put_buffer(&buf, QMAT_LUMA[avctx->profile], 64);
    bytestream_put_buffer(&buf, QMAT_CHROMA[avctx->profile], 64);

    pic_size = prores_encode_picture(avctx, pict, buf,
                                     pkt->size - compress_frame_size, 0, is_top_field_first);
    if (pic_size < 0) {
        return pic_size;
    }
    compress_frame_size += pic_size;

    if (ctx->is_interlaced) {
        pic_size = prores_encode_picture(avctx, pict, pkt->data + compress_frame_size,
                                         pkt->size - compress_frame_size, 1, !is_top_field_first);
        if (pic_size < 0) {
            return pic_size;
        }
        compress_frame_size += pic_size;
    }

    AV_WB32(pkt->data, compress_frame_size);
    pkt->flags |= AV_PKT_FLAG_KEY;
    pkt->size = compress_frame_size;
    *got_packet = 1;

    return 0;
}
