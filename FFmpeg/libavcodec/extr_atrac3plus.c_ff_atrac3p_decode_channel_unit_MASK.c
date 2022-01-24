#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_quant_units; int used_quant_units; void* noise_table_index; void* noise_level_index; void* noise_present; void* num_coded_subbands; int /*<<< orphan*/  negate_coeffs; int /*<<< orphan*/  swap_channels; void* num_subbands; void* mute_flag; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ Atrac3pChanUnitCtx ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void** atrac3p_qu_to_subband ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

int FUNC11(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                   int num_channels, AVCodecContext *avctx)
{
    int ret;

    /* parse sound header */
    ctx->num_quant_units = FUNC8(gb, 5) + 1;
    if (ctx->num_quant_units > 28 && ctx->num_quant_units < 32) {
        FUNC0(avctx, AV_LOG_ERROR,
               "Invalid number of quantization units: %d!\n",
               ctx->num_quant_units);
        return AVERROR_INVALIDDATA;
    }

    ctx->mute_flag = FUNC9(gb);

    /* decode various sound parameters */
    if ((ret = FUNC3(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    ctx->num_subbands       = atrac3p_qu_to_subband[ctx->num_quant_units - 1] + 1;
    ctx->num_coded_subbands = ctx->used_quant_units
                              ? atrac3p_qu_to_subband[ctx->used_quant_units - 1] + 1
                              : 0;

    if ((ret = FUNC4(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    if ((ret = FUNC1(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    FUNC5(gb, ctx, num_channels, avctx);

    if (num_channels == 2) {
        FUNC10(gb, ctx->swap_channels, ctx->num_coded_subbands);
        FUNC10(gb, ctx->negate_coeffs, ctx->num_coded_subbands);
    }

    FUNC7(gb, ctx, num_channels);

    if ((ret = FUNC2(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    if ((ret = FUNC6(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    /* decode global noise info */
    ctx->noise_present = FUNC9(gb);
    if (ctx->noise_present) {
        ctx->noise_level_index = FUNC8(gb, 4);
        ctx->noise_table_index = FUNC8(gb, 4);
    }

    return 0;
}