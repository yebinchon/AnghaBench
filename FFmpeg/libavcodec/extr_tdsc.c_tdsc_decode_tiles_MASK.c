#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {int width; int height; int /*<<< orphan*/  tilebuffer; TYPE_1__* refframe; int /*<<< orphan*/  gbc; } ;
struct TYPE_7__ {int* linesize; scalar_t__* data; } ;
typedef  TYPE_2__ TDSCContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (char,char,char,char) ; 
 int TDSB_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_3__*,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, int number_tiles)
{
    TDSCContext *ctx = avctx->priv_data;
    int i;

    /* Iterate over the number of tiles */
    for (i = 0; i < number_tiles; i++) {
        int tile_size;
        int tile_mode;
        int x, y, w, h;
        int ret;

        if (FUNC5(&ctx->gbc) < 4 ||
            FUNC6(&ctx->gbc) != FUNC0('T','D','S','B') ||
            FUNC5(&ctx->gbc) < TDSB_HEADER_SIZE - 4) {
            FUNC2(avctx, AV_LOG_ERROR, "TDSB tag is too small.\n");
            return AVERROR_INVALIDDATA;
        }

        tile_size = FUNC6(&ctx->gbc);
        if (FUNC5(&ctx->gbc) < tile_size)
            return AVERROR_INVALIDDATA;

        tile_mode = FUNC6(&ctx->gbc);
        FUNC7(&ctx->gbc, 4); // unknown
        x = FUNC6(&ctx->gbc);
        y = FUNC6(&ctx->gbc);
        w = FUNC6(&ctx->gbc) - x;
        h = FUNC6(&ctx->gbc) - y;

        if (x >= ctx->width || y >= ctx->height) {
            FUNC2(avctx, AV_LOG_ERROR,
                   "Invalid tile position (%d.%d outside %dx%d).\n",
                   x, y, ctx->width, ctx->height);
            return AVERROR_INVALIDDATA;
        }
        if (x + w > ctx->width || y + h > ctx->height) {
            FUNC2(avctx, AV_LOG_ERROR,
                   "Invalid tile size %dx%d\n", w, h);
            return AVERROR_INVALIDDATA;
        }

        ret = FUNC3(&ctx->tilebuffer, tile_size);
        if (!ctx->tilebuffer)
            return ret;

        FUNC4(&ctx->gbc, ctx->tilebuffer, tile_size);

        if (tile_mode == FUNC0('G','E','P','J')) {
            /* Decode JPEG tile and copy it in the reference frame */
            ret = FUNC8(avctx, tile_size, x, y, w, h);
            if (ret < 0)
                return ret;
        } else if (tile_mode == FUNC0(' ','W','A','R')) {
            /* Just copy the buffer to output */
            FUNC1(ctx->refframe->data[0] + x * 3 +
                                ctx->refframe->linesize[0] * y,
                                ctx->refframe->linesize[0], ctx->tilebuffer,
                                w * 3, w * 3, h);
        } else {
            FUNC2(avctx, AV_LOG_ERROR, "Unknown tile type %08x.\n", tile_mode);
            return AVERROR_INVALIDDATA;
        }
        FUNC2(avctx, AV_LOG_DEBUG, "Tile %d, %dx%d (%d.%d)\n", i, w, h, x, y);
    }

    return 0;
}