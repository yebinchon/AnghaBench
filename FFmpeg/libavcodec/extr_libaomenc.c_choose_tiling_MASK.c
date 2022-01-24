#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct aom_codec_enc_cfg {int tile_width_count; int tile_height_count; int* tile_widths; int* tile_heights; } ;
struct TYPE_6__ {int tile_cols_log2; int tile_cols; int tile_rows_log2; int tile_rows; int uniform_tiles; void* superblock_size; } ;
struct TYPE_5__ {int width; int height; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ AOMContext ;

/* Variables and functions */
 void* AOM_SUPERBLOCK_SIZE_128X128 ; 
 void* AOM_SUPERBLOCK_SIZE_64X64 ; 
 void* AOM_SUPERBLOCK_SIZE_DYNAMIC ; 
 int AV1_MAX_TILE_AREA ; 
 int AV1_MAX_TILE_COLS ; 
 int AV1_MAX_TILE_ROWS ; 
 int AV1_MAX_TILE_WIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int,int,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx,
                         struct aom_codec_enc_cfg *enccfg)
{
    AOMContext *ctx = avctx->priv_data;
    int sb_128x128_possible, sb_size, sb_width, sb_height;
    int uniform_rows, uniform_cols;
    int uniform_64x64_possible, uniform_128x128_possible;
    int tile_size, rounding, i;

    if (ctx->tile_cols_log2 >= 0)
        ctx->tile_cols = 1 << ctx->tile_cols_log2;
    if (ctx->tile_rows_log2 >= 0)
        ctx->tile_rows = 1 << ctx->tile_rows_log2;

    if (ctx->tile_cols == 0) {
        ctx->tile_cols = (avctx->width + AV1_MAX_TILE_WIDTH - 1) /
            AV1_MAX_TILE_WIDTH;
        if (ctx->tile_cols > 1) {
            FUNC3(avctx, AV_LOG_DEBUG, "Automatically using %d tile "
                   "columns to fill width.\n", ctx->tile_cols);
        }
    }
    FUNC2(ctx->tile_cols > 0);
    if (ctx->tile_rows == 0) {
        int max_tile_width =
            FUNC1((FUNC1(avctx->width, 128) +
                     ctx->tile_cols - 1) / ctx->tile_cols, 128);
        ctx->tile_rows =
            (max_tile_width * FUNC1(avctx->height, 128) +
             AV1_MAX_TILE_AREA - 1) / AV1_MAX_TILE_AREA;
        if (ctx->tile_rows > 1) {
            FUNC3(avctx, AV_LOG_DEBUG, "Automatically using %d tile "
                   "rows to fill area.\n", ctx->tile_rows);
        }
    }
    FUNC2(ctx->tile_rows > 0);

    if ((avctx->width  + 63) / 64 < ctx->tile_cols ||
        (avctx->height + 63) / 64 < ctx->tile_rows) {
        FUNC3(avctx, AV_LOG_ERROR, "Invalid tile sizing: frame not "
               "large enough to fit specified tile arrangement.\n");
        return FUNC0(EINVAL);
    }
    if (ctx->tile_cols > AV1_MAX_TILE_COLS ||
        ctx->tile_rows > AV1_MAX_TILE_ROWS) {
        FUNC3(avctx, AV_LOG_ERROR, "Invalid tile sizing: AV1 does "
               "not allow more than %dx%d tiles.\n",
               AV1_MAX_TILE_COLS, AV1_MAX_TILE_ROWS);
        return FUNC0(EINVAL);
    }
    if (avctx->width / ctx->tile_cols > AV1_MAX_TILE_WIDTH) {
        FUNC3(avctx, AV_LOG_ERROR, "Invalid tile sizing: AV1 does "
               "not allow tiles of width greater than %d.\n",
               AV1_MAX_TILE_WIDTH);
        return FUNC0(EINVAL);
    }

    ctx->superblock_size = AOM_SUPERBLOCK_SIZE_DYNAMIC;

    if (ctx->tile_cols == 1 && ctx->tile_rows == 1) {
        FUNC3(avctx, AV_LOG_DEBUG, "Using a single tile.\n");
        return 0;
    }

    sb_128x128_possible =
        (avctx->width  + 127) / 128 >= ctx->tile_cols &&
        (avctx->height + 127) / 128 >= ctx->tile_rows;

    ctx->tile_cols_log2 = ctx->tile_cols == 1 ? 0 :
        FUNC4(ctx->tile_cols - 1) + 1;
    ctx->tile_rows_log2 = ctx->tile_rows == 1 ? 0 :
        FUNC4(ctx->tile_rows - 1) + 1;

    uniform_cols = FUNC5(avctx->width,
                                        64, ctx->tile_cols_log2);
    uniform_rows = FUNC5(avctx->height,
                                        64, ctx->tile_rows_log2);
    FUNC3(avctx, AV_LOG_DEBUG, "Uniform with 64x64 superblocks "
           "-> %dx%d tiles.\n", uniform_cols, uniform_rows);
    uniform_64x64_possible = uniform_cols == ctx->tile_cols &&
                             uniform_rows == ctx->tile_rows;

    if (sb_128x128_possible) {
        uniform_cols = FUNC5(avctx->width,
                                            128, ctx->tile_cols_log2);
        uniform_rows = FUNC5(avctx->height,
                                            128, ctx->tile_rows_log2);
        FUNC3(avctx, AV_LOG_DEBUG, "Uniform with 128x128 superblocks "
               "-> %dx%d tiles.\n", uniform_cols, uniform_rows);
        uniform_128x128_possible = uniform_cols == ctx->tile_cols &&
                                   uniform_rows == ctx->tile_rows;
    } else {
        FUNC3(avctx, AV_LOG_DEBUG, "128x128 superblocks not possible.\n");
        uniform_128x128_possible = 0;
    }

    ctx->uniform_tiles = 1;
    if (uniform_64x64_possible && uniform_128x128_possible) {
        FUNC3(avctx, AV_LOG_DEBUG, "Using uniform tiling with dynamic "
               "superblocks (tile_cols_log2 = %d, tile_rows_log2 = %d).\n",
               ctx->tile_cols_log2, ctx->tile_rows_log2);
        return 0;
    }
    if (uniform_64x64_possible && !sb_128x128_possible) {
        FUNC3(avctx, AV_LOG_DEBUG, "Using uniform tiling with 64x64 "
               "superblocks (tile_cols_log2 = %d, tile_rows_log2 = %d).\n",
               ctx->tile_cols_log2, ctx->tile_rows_log2);
        ctx->superblock_size = AOM_SUPERBLOCK_SIZE_64X64;
        return 0;
    }
    if (uniform_128x128_possible) {
        FUNC3(avctx, AV_LOG_DEBUG, "Using uniform tiling with 128x128 "
               "superblocks (tile_cols_log2 = %d, tile_rows_log2 = %d).\n",
               ctx->tile_cols_log2, ctx->tile_rows_log2);
        ctx->superblock_size = AOM_SUPERBLOCK_SIZE_128X128;
        return 0;
    }
    ctx->uniform_tiles = 0;

    if (sb_128x128_possible) {
        sb_size = 128;
        ctx->superblock_size = AOM_SUPERBLOCK_SIZE_128X128;
    } else {
        sb_size = 64;
        ctx->superblock_size = AOM_SUPERBLOCK_SIZE_64X64;
    }
    FUNC3(avctx, AV_LOG_DEBUG, "Using fixed tiling with %dx%d "
           "superblocks (tile_cols = %d, tile_rows = %d).\n",
           sb_size, sb_size, ctx->tile_cols, ctx->tile_rows);

    enccfg->tile_width_count  = ctx->tile_cols;
    enccfg->tile_height_count = ctx->tile_rows;

    sb_width  = (avctx->width  + sb_size - 1) / sb_size;
    sb_height = (avctx->height + sb_size - 1) / sb_size;

    tile_size = sb_width / ctx->tile_cols;
    rounding  = sb_width % ctx->tile_cols;
    for (i = 0; i < ctx->tile_cols; i++) {
        enccfg->tile_widths[i] = tile_size +
            (i < rounding / 2 ||
             i > ctx->tile_cols - 1 - (rounding + 1) / 2);
    }

    tile_size = sb_height / ctx->tile_rows;
    rounding  = sb_height % ctx->tile_rows;
    for (i = 0; i < ctx->tile_rows; i++) {
        enccfg->tile_heights[i] = tile_size +
            (i < rounding / 2 ||
             i > ctx->tile_rows - 1 - (rounding + 1) / 2);
    }

    return 0;
}