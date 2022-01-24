#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int width; int height; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int width; int height; TYPE_7__* refframe; int /*<<< orphan*/  gbc; } ;
typedef  TYPE_1__ TDSCContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int BITMAPINFOHEADER_SIZE ; 
 int FUNC0 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_2__*,int,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, int number_tiles)
{
    TDSCContext *ctx = avctx->priv_data;
    int ret, w, h, init_refframe = !ctx->refframe->data[0];

    /* BITMAPINFOHEADER
     * http://msdn.microsoft.com/en-us/library/windows/desktop/dd183376.aspx */
    if (FUNC3(&ctx->gbc) != BITMAPINFOHEADER_SIZE)
        return AVERROR_INVALIDDATA;

    /* Store size, but wait for context reinit before updating avctx */
    w =  FUNC3(&ctx->gbc);
    h = -FUNC3(&ctx->gbc);

    if (FUNC2(&ctx->gbc) != 1 ||  // 1 plane
        FUNC2(&ctx->gbc) != 24)   // BGR24
        return AVERROR_INVALIDDATA;

    FUNC4(&ctx->gbc, 24); // unused fields

    /* Update sizes */
    if (avctx->width != w || avctx->height != h) {
        FUNC1(avctx, AV_LOG_DEBUG, "Size update %dx%d -> %d%d.\n",
               avctx->width, avctx->height, ctx->width, ctx->height);
        ret = FUNC5(avctx, w, h);
        if (ret < 0)
            return ret;
        init_refframe = 1;
    }
    ctx->refframe->width  = ctx->width  = w;
    ctx->refframe->height = ctx->height = h;

    /* Allocate the reference frame if not already done or on size change */
    if (init_refframe) {
        ret = FUNC0(ctx->refframe, 32);
        if (ret < 0)
            return ret;
    }

    /* Decode all tiles in a frame */
    return FUNC6(avctx, number_tiles);
}