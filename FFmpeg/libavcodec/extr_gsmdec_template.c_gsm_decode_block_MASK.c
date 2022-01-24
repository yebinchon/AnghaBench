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
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int** lar; size_t lar_idx; int /*<<< orphan*/  msr; int /*<<< orphan*/ * ref_buf; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ GSMContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/ ** ff_gsm_apcm_bits ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, int16_t *samples,
                            GetBitContext *gb, int mode)
{
    GSMContext *ctx = avctx->priv_data;
    int i;
    int16_t *ref_dst = ctx->ref_buf + 120;
    int *lar = ctx->lar[ctx->lar_idx];
    lar[0] = FUNC2(FUNC3(gb, 6), 13107,  1 << 15);
    lar[1] = FUNC2(FUNC3(gb, 6), 13107,  1 << 15);
    lar[2] = FUNC2(FUNC3(gb, 5), 13107, (1 << 14) + 2048*2);
    lar[3] = FUNC2(FUNC3(gb, 5), 13107, (1 << 14) - 2560*2);
    lar[4] = FUNC2(FUNC3(gb, 4), 19223, (1 << 13) +   94*2);
    lar[5] = FUNC2(FUNC3(gb, 4), 17476, (1 << 13) - 1792*2);
    lar[6] = FUNC2(FUNC3(gb, 3), 31454, (1 << 12) -  341*2);
    lar[7] = FUNC2(FUNC3(gb, 3), 29708, (1 << 12) - 1144*2);

    for (i = 0; i < 4; i++) {
        int lag      = FUNC3(gb, 7);
        int gain_idx = FUNC3(gb, 2);
        int offset   = FUNC3(gb, 2);
        lag = FUNC1(lag, 40, 120);
        FUNC4(ref_dst, lag, gain_idx);
        FUNC0(gb, ref_dst + offset, ff_gsm_apcm_bits[mode][i]);
        ref_dst += 40;
    }
    FUNC5(ctx->ref_buf, ctx->ref_buf + 160, 120 * sizeof(*ctx->ref_buf));
    FUNC7(ctx, samples, ctx->ref_buf + 120);
    // for optimal speed this could be merged with short_term_synth,
    // not done yet because it is a bit ugly
    ctx->msr = FUNC6(samples, ctx->msr);
    return 0;
}