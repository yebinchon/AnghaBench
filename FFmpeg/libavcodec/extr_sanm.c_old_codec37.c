
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;
struct TYPE_5__ {int pitch; int height; int frm1_size; int frm2_size; int avctx; int gb; int * frm2; int * frm1; scalar_t__ frm0; scalar_t__ rotate_code; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_log (int ,int ,char*,...) ;
 int avpriv_report_missing_feature (int ,char*,int) ;
 int bytestream2_get_buffer (int *,int *,int) ;
 int bytestream2_get_bufferu (int *,int *,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,int) ;
 int* c37_mv ;
 int codec37_mv (int *,int *,int,int,int,int) ;
 int copy_block4 (int *,int *,int,int,int) ;
 int memset (int *,int,int) ;
 int rle_decode (TYPE_1__*,int *,int) ;
 int rotate_bufs (TYPE_1__*,int) ;

__attribute__((used)) static int old_codec37(SANMVideoContext *ctx, int top,
                       int left, int width, int height)
{
    ptrdiff_t stride = ctx->pitch;
    int i, j, k, t;
    uint8_t *dst, *prev;
    int skip_run = 0;
    int compr = bytestream2_get_byte(&ctx->gb);
    int mvoff = bytestream2_get_byte(&ctx->gb);
    int seq = bytestream2_get_le16(&ctx->gb);
    uint32_t decoded_size = bytestream2_get_le32(&ctx->gb);
    int flags;

    bytestream2_skip(&ctx->gb, 4);
    flags = bytestream2_get_byte(&ctx->gb);
    bytestream2_skip(&ctx->gb, 3);

    if (decoded_size > ctx->height * stride - left - top * stride) {
        decoded_size = ctx->height * stride - left - top * stride;
        av_log(ctx->avctx, AV_LOG_WARNING, "Decoded size is too large.\n");
    }

    ctx->rotate_code = 0;

    if (((seq & 1) || !(flags & 1)) && (compr && compr != 2))
        rotate_bufs(ctx, 1);

    dst = ((uint8_t*)ctx->frm0) + left + top * stride;
    prev = ((uint8_t*)ctx->frm2) + left + top * stride;

    if (mvoff > 2) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Invalid motion base value %d.\n", mvoff);
        return AVERROR_INVALIDDATA;
    }

    switch (compr) {
    case 0:
        for (i = 0; i < height; i++) {
            bytestream2_get_buffer(&ctx->gb, dst, width);
            dst += stride;
        }
        memset(ctx->frm1, 0, ctx->height * stride);
        memset(ctx->frm2, 0, ctx->height * stride);
        break;
    case 2:
        if (rle_decode(ctx, dst, decoded_size))
            return AVERROR_INVALIDDATA;
        memset(ctx->frm1, 0, ctx->frm1_size);
        memset(ctx->frm2, 0, ctx->frm2_size);
        break;
    case 3:
    case 4:
        if (flags & 4) {
            for (j = 0; j < height; j += 4) {
                for (i = 0; i < width; i += 4) {
                    int code;
                    if (skip_run) {
                        skip_run--;
                        copy_block4(dst + i, prev + i, stride, stride, 4);
                        continue;
                    }
                    if (bytestream2_get_bytes_left(&ctx->gb) < 1)
                        return AVERROR_INVALIDDATA;
                    code = bytestream2_get_byteu(&ctx->gb);
                    switch (code) {
                    case 0xFF:
                        if (bytestream2_get_bytes_left(&ctx->gb) < 16)
                            return AVERROR_INVALIDDATA;
                        for (k = 0; k < 4; k++)
                            bytestream2_get_bufferu(&ctx->gb, dst + i + k * stride, 4);
                        break;
                    case 0xFE:
                        if (bytestream2_get_bytes_left(&ctx->gb) < 4)
                            return AVERROR_INVALIDDATA;
                        for (k = 0; k < 4; k++)
                            memset(dst + i + k * stride, bytestream2_get_byteu(&ctx->gb), 4);
                        break;
                    case 0xFD:
                        if (bytestream2_get_bytes_left(&ctx->gb) < 1)
                            return AVERROR_INVALIDDATA;
                        t = bytestream2_get_byteu(&ctx->gb);
                        for (k = 0; k < 4; k++)
                            memset(dst + i + k * stride, t, 4);
                        break;
                    default:
                        if (compr == 4 && !code) {
                            if (bytestream2_get_bytes_left(&ctx->gb) < 1)
                                return AVERROR_INVALIDDATA;
                            skip_run = bytestream2_get_byteu(&ctx->gb) + 1;
                            i -= 4;
                        } else {
                            int mx, my;

                            mx = c37_mv[(mvoff * 255 + code) * 2];
                            my = c37_mv[(mvoff * 255 + code) * 2 + 1];
                            codec37_mv(dst + i, prev + i + mx + my * stride,
                                       ctx->height, stride, i + mx, j + my);
                        }
                    }
                }
                dst += stride * 4;
                prev += stride * 4;
            }
        } else {
            for (j = 0; j < height; j += 4) {
                for (i = 0; i < width; i += 4) {
                    int code;
                    if (skip_run) {
                        skip_run--;
                        copy_block4(dst + i, prev + i, stride, stride, 4);
                        continue;
                    }
                    code = bytestream2_get_byte(&ctx->gb);
                    if (code == 0xFF) {
                        if (bytestream2_get_bytes_left(&ctx->gb) < 16)
                            return AVERROR_INVALIDDATA;
                        for (k = 0; k < 4; k++)
                            bytestream2_get_bufferu(&ctx->gb, dst + i + k * stride, 4);
                    } else if (compr == 4 && !code) {
                        if (bytestream2_get_bytes_left(&ctx->gb) < 1)
                            return AVERROR_INVALIDDATA;
                        skip_run = bytestream2_get_byteu(&ctx->gb) + 1;
                        i -= 4;
                    } else {
                        int mx, my;

                        mx = c37_mv[(mvoff * 255 + code) * 2];
                        my = c37_mv[(mvoff * 255 + code) * 2 + 1];
                        codec37_mv(dst + i, prev + i + mx + my * stride,
                                   ctx->height, stride, i + mx, j + my);
                    }
                }
                dst += stride * 4;
                prev += stride * 4;
            }
        }
        break;
    default:
        avpriv_report_missing_feature(ctx->avctx,
                                      "Subcodec 37 compression %d", compr);
        return AVERROR_PATCHWELCOME;
    }

    return 0;
}
