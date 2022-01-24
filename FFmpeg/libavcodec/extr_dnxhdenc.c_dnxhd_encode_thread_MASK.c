#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_10__ {int* last_dc; int mb_width; int (* dct_quantize ) (TYPE_3__*,int /*<<< orphan*/ *,int,int,int*) ;int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {scalar_t__ pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int data_offset; int* slice_offs; int bit_depth; int* mb_qscale; int is_444; TYPE_3__ m; int /*<<< orphan*/ ** blocks; int /*<<< orphan*/ * slice_size; struct TYPE_8__** thread; } ;
typedef  TYPE_1__ DNXHDEncContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_YUV444P10 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, void *arg,
                               int jobnr, int threadnr)
{
    DNXHDEncContext *ctx = avctx->priv_data;
    int mb_y = jobnr, mb_x;
    ctx = ctx->thread[threadnr];
    FUNC4(&ctx->m.pb, (uint8_t *)arg + ctx->data_offset + ctx->slice_offs[jobnr],
                  ctx->slice_size[jobnr]);

    ctx->m.last_dc[0] =
    ctx->m.last_dc[1] =
    ctx->m.last_dc[2] = 1 << (ctx->bit_depth + 2);
    for (mb_x = 0; mb_x < ctx->m.mb_width; mb_x++) {
        unsigned mb = mb_y * ctx->m.mb_width + mb_x;
        int qscale = ctx->mb_qscale[mb];
        int i;

        FUNC5(&ctx->m.pb, 11, qscale);
        FUNC5(&ctx->m.pb, 1, avctx->pix_fmt == AV_PIX_FMT_YUV444P10);

        FUNC1(ctx, mb_x, mb_y);

        for (i = 0; i < 8 + 4 * ctx->is_444; i++) {
            int16_t *block = ctx->blocks[i];
            int overflow, n = FUNC2(ctx, i);
            int last_index = ctx->m.dct_quantize(&ctx->m, block,
                                                 ctx->is_444 ? (((i >> 1) % 3) < 1 ? 0 : 4): 4 & (2*i),
                                                 qscale, &overflow);
            // START_TIMER;
            FUNC0(ctx, block, last_index, n);
            // STOP_TIMER("encode_block");
        }
    }
    if (FUNC6(&ctx->m.pb) & 31)
        FUNC5(&ctx->m.pb, 32 - (FUNC6(&ctx->m.pb) & 31), 0);
    FUNC3(&ctx->m.pb);
    return 0;
}