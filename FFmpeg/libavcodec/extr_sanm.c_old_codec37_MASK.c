#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
struct TYPE_5__ {int pitch; int height; int frm1_size; int frm2_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/ * frm2; int /*<<< orphan*/ * frm1; scalar_t__ frm0; scalar_t__ rotate_code; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int* c37_mv ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC15(SANMVideoContext *ctx, int top,
                       int left, int width, int height)
{
    ptrdiff_t stride = ctx->pitch;
    int i, j, k, t;
    uint8_t *dst, *prev;
    int skip_run = 0;
    int compr = FUNC4(&ctx->gb);
    int mvoff = FUNC4(&ctx->gb);
    int seq   = FUNC7(&ctx->gb);
    uint32_t decoded_size = FUNC8(&ctx->gb);
    int flags;

    FUNC9(&ctx->gb, 4);
    flags = FUNC4(&ctx->gb);
    FUNC9(&ctx->gb, 3);

    if (decoded_size > ctx->height * stride - left - top * stride) {
        decoded_size = ctx->height * stride - left - top * stride;
        FUNC0(ctx->avctx, AV_LOG_WARNING, "Decoded size is too large.\n");
    }

    ctx->rotate_code = 0;

    if (((seq & 1) || !(flags & 1)) && (compr && compr != 2))
        FUNC14(ctx, 1);

    dst  = ((uint8_t*)ctx->frm0) + left + top * stride;
    prev = ((uint8_t*)ctx->frm2) + left + top * stride;

    if (mvoff > 2) {
        FUNC0(ctx->avctx, AV_LOG_ERROR, "Invalid motion base value %d.\n", mvoff);
        return AVERROR_INVALIDDATA;
    }

    switch (compr) {
    case 0:
        for (i = 0; i < height; i++) {
            FUNC2(&ctx->gb, dst, width);
            dst += stride;
        }
        FUNC12(ctx->frm1, 0, ctx->height * stride);
        FUNC12(ctx->frm2, 0, ctx->height * stride);
        break;
    case 2:
        if (FUNC13(ctx, dst, decoded_size))
            return AVERROR_INVALIDDATA;
        FUNC12(ctx->frm1, 0, ctx->frm1_size);
        FUNC12(ctx->frm2, 0, ctx->frm2_size);
        break;
    case 3:
    case 4:
        if (flags & 4) {
            for (j = 0; j < height; j += 4) {
                for (i = 0; i < width; i += 4) {
                    int code;
                    if (skip_run) {
                        skip_run--;
                        FUNC11(dst + i, prev + i, stride, stride, 4);
                        continue;
                    }
                    if (FUNC5(&ctx->gb) < 1)
                        return AVERROR_INVALIDDATA;
                    code = FUNC6(&ctx->gb);
                    switch (code) {
                    case 0xFF:
                        if (FUNC5(&ctx->gb) < 16)
                            return AVERROR_INVALIDDATA;
                        for (k = 0; k < 4; k++)
                            FUNC3(&ctx->gb, dst + i + k * stride, 4);
                        break;
                    case 0xFE:
                        if (FUNC5(&ctx->gb) < 4)
                            return AVERROR_INVALIDDATA;
                        for (k = 0; k < 4; k++)
                            FUNC12(dst + i + k * stride, FUNC6(&ctx->gb), 4);
                        break;
                    case 0xFD:
                        if (FUNC5(&ctx->gb) < 1)
                            return AVERROR_INVALIDDATA;
                        t = FUNC6(&ctx->gb);
                        for (k = 0; k < 4; k++)
                            FUNC12(dst + i + k * stride, t, 4);
                        break;
                    default:
                        if (compr == 4 && !code) {
                            if (FUNC5(&ctx->gb) < 1)
                                return AVERROR_INVALIDDATA;
                            skip_run = FUNC6(&ctx->gb) + 1;
                            i -= 4;
                        } else {
                            int mx, my;

                            mx = c37_mv[(mvoff * 255 + code) * 2];
                            my = c37_mv[(mvoff * 255 + code) * 2 + 1];
                            FUNC10(dst + i, prev + i + mx + my * stride,
                                       ctx->height, stride, i + mx, j + my);
                        }
                    }
                }
                dst  += stride * 4;
                prev += stride * 4;
            }
        } else {
            for (j = 0; j < height; j += 4) {
                for (i = 0; i < width; i += 4) {
                    int code;
                    if (skip_run) {
                        skip_run--;
                        FUNC11(dst + i, prev + i, stride, stride, 4);
                        continue;
                    }
                    code = FUNC4(&ctx->gb);
                    if (code == 0xFF) {
                        if (FUNC5(&ctx->gb) < 16)
                            return AVERROR_INVALIDDATA;
                        for (k = 0; k < 4; k++)
                            FUNC3(&ctx->gb, dst + i + k * stride, 4);
                    } else if (compr == 4 && !code) {
                        if (FUNC5(&ctx->gb) < 1)
                            return AVERROR_INVALIDDATA;
                        skip_run = FUNC6(&ctx->gb) + 1;
                        i -= 4;
                    } else {
                        int mx, my;

                        mx = c37_mv[(mvoff * 255 + code) * 2];
                        my = c37_mv[(mvoff * 255 + code) * 2 + 1];
                        FUNC10(dst + i, prev + i + mx + my * stride,
                                   ctx->height, stride, i + mx, j + my);
                    }
                }
                dst  += stride * 4;
                prev += stride * 4;
            }
        }
        break;
    default:
        FUNC1(ctx->avctx,
                                      "Subcodec 37 compression %d", compr);
        return AVERROR_PATCHWELCOME;
    }

    return 0;
}