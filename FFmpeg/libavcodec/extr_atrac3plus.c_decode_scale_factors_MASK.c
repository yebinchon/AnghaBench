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
struct TYPE_6__ {TYPE_1__* channels; int /*<<< orphan*/  used_quant_units; } ;
struct TYPE_5__ {int /*<<< orphan*/  qu_sf_idx; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ Atrac3pChanUnitCtx ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                int num_channels, AVCodecContext *avctx)
{
    int ch_num, ret;

    if (!ctx->used_quant_units)
        return 0;

    for (ch_num = 0; ch_num < num_channels; ch_num++) {
        FUNC1(ctx->channels[ch_num].qu_sf_idx, 0,
               sizeof(ctx->channels[ch_num].qu_sf_idx));

        if ((ret = FUNC0(gb, ctx, ch_num, avctx)) < 0)
            return ret;
    }

    return 0;
}