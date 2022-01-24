#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC10 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC11 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(SANMVideoContext *ctx)
{
    uint16_t codec = FUNC4(&ctx->gb);
    uint16_t left  = FUNC4(&ctx->gb);
    uint16_t top   = FUNC4(&ctx->gb);
    uint16_t w     = FUNC4(&ctx->gb);
    uint16_t h     = FUNC4(&ctx->gb);

    if (!w || !h) {
        FUNC2(ctx->avctx, AV_LOG_ERROR, "Dimensions are invalid.\n");
        return AVERROR_INVALIDDATA;
    }

    if (ctx->width < left + w || ctx->height < top + h) {
        int ret = FUNC6(ctx->avctx, FUNC1(left + w, ctx->width),
                                    FUNC1(top + h, ctx->height));
        if (ret < 0)
            return ret;
        FUNC8(ctx, FUNC1(left + w, ctx->width),
                   FUNC1(top + h, ctx->height));
        if (FUNC7(ctx)) {
            FUNC2(ctx->avctx, AV_LOG_ERROR, "Error resizing buffers.\n");
            return FUNC0(ENOMEM);
        }
    }
    FUNC5(&ctx->gb, 4);

    switch (codec) {
    case 1:
    case 3:
        return FUNC9(ctx, top, left, w, h);
    case 37:
        return FUNC10(ctx, top, left, w, h);
    case 47:
        return FUNC11(ctx, top, left, w, h);
    default:
        FUNC3(ctx->avctx, "Subcodec %d", codec);
        return AVERROR_PATCHWELCOME;
    }
}