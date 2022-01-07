
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ height; int width; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int cursor_hot_x; int cursor_hot_y; int cursor_w; int cursor_h; int cursor_stride; scalar_t__ cursor_y; int* cursor; int gbc; int cursor_x; } ;
typedef TYPE_1__ TDSCContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;



 int FFALIGN (int,int) ;
 void* FFMIN (int,int) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_reallocp (int**,int) ;
 int avpriv_request_sample (TYPE_2__*,char*,int) ;
 int bytestream2_get_be32 (int *) ;
 void* bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int tdsc_load_cursor(AVCodecContext *avctx)
{
    TDSCContext *ctx = avctx->priv_data;
    int i, j, k, ret, cursor_fmt;
    uint8_t *dst;

    ctx->cursor_hot_x = bytestream2_get_le16(&ctx->gbc);
    ctx->cursor_hot_y = bytestream2_get_le16(&ctx->gbc);
    ctx->cursor_w = bytestream2_get_le16(&ctx->gbc);
    ctx->cursor_h = bytestream2_get_le16(&ctx->gbc);

    ctx->cursor_stride = FFALIGN(ctx->cursor_w, 32) * 4;
    cursor_fmt = bytestream2_get_le32(&ctx->gbc);

    if (ctx->cursor_x >= avctx->width || ctx->cursor_y >= avctx->height) {
        av_log(avctx, AV_LOG_ERROR,
               "Invalid cursor position (%d.%d outside %dx%d).\n",
               ctx->cursor_x, ctx->cursor_y, avctx->width, avctx->height);
        return AVERROR_INVALIDDATA;
    }
    if (ctx->cursor_w < 1 || ctx->cursor_w > 256 ||
        ctx->cursor_h < 1 || ctx->cursor_h > 256) {
        av_log(avctx, AV_LOG_ERROR,
               "Invalid cursor dimensions %dx%d.\n",
               ctx->cursor_w, ctx->cursor_h);
        return AVERROR_INVALIDDATA;
    }
    if (ctx->cursor_hot_x > ctx->cursor_w ||
        ctx->cursor_hot_y > ctx->cursor_h) {
        av_log(avctx, AV_LOG_WARNING, "Invalid hotspot position %d.%d.\n",
               ctx->cursor_hot_x, ctx->cursor_hot_y);
        ctx->cursor_hot_x = FFMIN(ctx->cursor_hot_x, ctx->cursor_w - 1);
        ctx->cursor_hot_y = FFMIN(ctx->cursor_hot_y, ctx->cursor_h - 1);
    }

    ret = av_reallocp(&ctx->cursor, ctx->cursor_stride * ctx->cursor_h);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Cannot allocate cursor buffer.\n");
        return ret;
    }

    dst = ctx->cursor;

    switch (cursor_fmt) {
    case 129:
        for (j = 0; j < ctx->cursor_h; j++) {
            for (i = 0; i < ctx->cursor_w; i += 32) {
                uint32_t bits = bytestream2_get_be32(&ctx->gbc);
                for (k = 0; k < 32; k++) {
                    dst[0] = !!(bits & 0x80000000);
                    dst += 4;
                    bits <<= 1;
                }
            }
            dst += ctx->cursor_stride - ctx->cursor_w * 4;
        }

        dst = ctx->cursor;
        for (j = 0; j < ctx->cursor_h; j++) {
            for (i = 0; i < ctx->cursor_w; i += 32) {
                uint32_t bits = bytestream2_get_be32(&ctx->gbc);
                for (k = 0; k < 32; k++) {
                    int mask_bit = !!(bits & 0x80000000);
                    switch (dst[0] * 2 + mask_bit) {
                    case 0:
                        dst[0] = 0xFF;
                        dst[1] = 0x00;
                        dst[2] = 0x00;
                        dst[3] = 0x00;
                        break;
                    case 1:
                        dst[0] = 0xFF;
                        dst[1] = 0xFF;
                        dst[2] = 0xFF;
                        dst[3] = 0xFF;
                        break;
                    default:
                        dst[0] = 0x00;
                        dst[1] = 0x00;
                        dst[2] = 0x00;
                        dst[3] = 0x00;
                    }
                    dst += 4;
                    bits <<= 1;
                }
            }
            dst += ctx->cursor_stride - ctx->cursor_w * 4;
        }
        break;
    case 130:
    case 128:

        bytestream2_skip(&ctx->gbc,
                         ctx->cursor_h * (FFALIGN(ctx->cursor_w, 32) >> 3));
        if (cursor_fmt & 8) {
            for (j = 0; j < ctx->cursor_h; j++) {
                for (i = 0; i < ctx->cursor_w; i++) {
                    int val = bytestream2_get_be32(&ctx->gbc);
                    *dst++ = val >> 24;
                    *dst++ = val >> 16;
                    *dst++ = val >> 8;
                    *dst++ = val >> 0;
                }
                dst += ctx->cursor_stride - ctx->cursor_w * 4;
            }
        } else {
            for (j = 0; j < ctx->cursor_h; j++) {
                for (i = 0; i < ctx->cursor_w; i++) {
                    int val = bytestream2_get_be32(&ctx->gbc);
                    *dst++ = val >> 0;
                    *dst++ = val >> 24;
                    *dst++ = val >> 16;
                    *dst++ = val >> 8;
                }
                dst += ctx->cursor_stride - ctx->cursor_w * 4;
            }
        }
        break;
    default:
        avpriv_request_sample(avctx, "Cursor format %08x", cursor_fmt);
        return AVERROR_PATCHWELCOME;
    }

    return 0;
}
