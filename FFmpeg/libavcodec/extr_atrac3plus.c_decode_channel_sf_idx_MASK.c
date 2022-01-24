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
struct TYPE_8__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
struct TYPE_10__ {int* qu_sf_idx; } ;
struct TYPE_9__ {int used_quant_units; TYPE_3__* channels; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ Atrac3pChanUnitCtx ;
typedef  TYPE_3__ Atrac3pChanParams ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* sf_vlc_tabs ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                 int ch_num, AVCodecContext *avctx)
{
    int i, weight_idx = 0, delta, diff, num_long_vals,
        delta_bits, min_val, vlc_sel, start_val;
    VLC *vlc_tab;
    Atrac3pChanParams *chan     = &ctx->channels[ch_num];
    Atrac3pChanParams *ref_chan = &ctx->channels[0];

    switch (FUNC2(gb, 2)) { /* switch according to coding mode */
    case 0: /* coded using constant number of bits */
        for (i = 0; i < ctx->used_quant_units; i++)
            chan->qu_sf_idx[i] = FUNC2(gb, 6);
        break;
    case 1:
        if (ch_num) {
            vlc_tab = &sf_vlc_tabs[FUNC2(gb, 2)];

            for (i = 0; i < ctx->used_quant_units; i++) {
                delta = FUNC4(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_sf_idx[i] = (ref_chan->qu_sf_idx[i] + delta) & 0x3F;
            }
        } else {
            weight_idx = FUNC2(gb, 2);
            if (weight_idx == 3) {
                FUNC0(gb, chan->qu_sf_idx, ctx->used_quant_units);

                num_long_vals = FUNC2(gb, 5);
                delta_bits    = FUNC2(gb, 2);
                min_val       = FUNC2(gb, 4) - 7;

                for (i = 0; i < num_long_vals; i++)
                    chan->qu_sf_idx[i] = (chan->qu_sf_idx[i] +
                                          FUNC2(gb, 4) - 7) & 0x3F;

                /* all others are: min_val + delta */
                for (i = num_long_vals; i < ctx->used_quant_units; i++)
                    chan->qu_sf_idx[i] = (chan->qu_sf_idx[i] + min_val +
                                          FUNC3(gb, delta_bits)) & 0x3F;
            } else {
                num_long_vals = FUNC2(gb, 5);
                delta_bits    = FUNC2(gb, 3);
                min_val       = FUNC2(gb, 6);
                if (num_long_vals > ctx->used_quant_units || delta_bits == 7) {
                    FUNC1(avctx, AV_LOG_ERROR,
                           "SF mode 1: invalid parameters!\n");
                    return AVERROR_INVALIDDATA;
                }

                /* read full-precision SF indexes */
                for (i = 0; i < num_long_vals; i++)
                    chan->qu_sf_idx[i] = FUNC2(gb, 6);

                /* all others are: min_val + delta */
                for (i = num_long_vals; i < ctx->used_quant_units; i++)
                    chan->qu_sf_idx[i] = (min_val +
                                          FUNC3(gb, delta_bits)) & 0x3F;
            }
        }
        break;
    case 2:
        if (ch_num) {
            vlc_tab = &sf_vlc_tabs[FUNC2(gb, 2)];

            delta = FUNC4(gb, vlc_tab->table, vlc_tab->bits, 1);
            chan->qu_sf_idx[0] = (ref_chan->qu_sf_idx[0] + delta) & 0x3F;

            for (i = 1; i < ctx->used_quant_units; i++) {
                diff  = ref_chan->qu_sf_idx[i] - ref_chan->qu_sf_idx[i - 1];
                delta = FUNC4(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_sf_idx[i] = (chan->qu_sf_idx[i - 1] + diff + delta) & 0x3F;
            }
        } else {
            vlc_tab = &sf_vlc_tabs[FUNC2(gb, 2) + 4];

            FUNC0(gb, chan->qu_sf_idx, ctx->used_quant_units);

            for (i = 0; i < ctx->used_quant_units; i++) {
                delta = FUNC4(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_sf_idx[i] = (chan->qu_sf_idx[i] +
                                      FUNC5(delta, 4)) & 0x3F;
            }
        }
        break;
    case 3:
        if (ch_num) {
            /* copy coefficients from reference channel */
            for (i = 0; i < ctx->used_quant_units; i++)
                chan->qu_sf_idx[i] = ref_chan->qu_sf_idx[i];
        } else {
            weight_idx = FUNC2(gb, 2);
            vlc_sel    = FUNC2(gb, 2);
            vlc_tab    = &sf_vlc_tabs[vlc_sel];

            if (weight_idx == 3) {
                vlc_tab = &sf_vlc_tabs[vlc_sel + 4];

                FUNC0(gb, chan->qu_sf_idx, ctx->used_quant_units);

                diff               = (FUNC2(gb, 4)    + 56)   & 0x3F;
                chan->qu_sf_idx[0] = (chan->qu_sf_idx[0] + diff) & 0x3F;

                for (i = 1; i < ctx->used_quant_units; i++) {
                    delta = FUNC4(gb, vlc_tab->table, vlc_tab->bits, 1);
                    diff               = (diff + FUNC5(delta, 4)) & 0x3F;
                    chan->qu_sf_idx[i] = (diff + chan->qu_sf_idx[i])    & 0x3F;
                }
            } else {
                /* 1st coefficient is coded directly */
                chan->qu_sf_idx[0] = FUNC2(gb, 6);

                for (i = 1; i < ctx->used_quant_units; i++) {
                    delta = FUNC4(gb, vlc_tab->table, vlc_tab->bits, 1);
                    chan->qu_sf_idx[i] = (chan->qu_sf_idx[i - 1] + delta) & 0x3F;
                }
            }
        }
        break;
    }

    if (weight_idx && weight_idx < 3)
        return FUNC6(ctx, chan, weight_idx, avctx);

    return 0;
}