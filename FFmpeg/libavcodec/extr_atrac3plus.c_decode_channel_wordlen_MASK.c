#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
struct TYPE_12__ {int fill_mode; size_t* qu_wordlen; int num_coded_vals; int split_point; } ;
struct TYPE_11__ {int num_quant_units; TYPE_3__* channels; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ Atrac3pChanUnitCtx ;
typedef  TYPE_3__ Atrac3pChanParams ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int*) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ *** atrac3p_wl_shapes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int*,int) ; 
 TYPE_1__* wl_vlc_tabs ; 

__attribute__((used)) static int FUNC9(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                  int ch_num, AVCodecContext *avctx)
{
    int i, weight_idx = 0, delta, diff, pos, delta_bits, min_val, flag,
        ret, start_val;
    VLC *vlc_tab;
    Atrac3pChanParams *chan     = &ctx->channels[ch_num];
    Atrac3pChanParams *ref_chan = &ctx->channels[0];

    chan->fill_mode = 0;

    switch (FUNC3(gb, 2)) { /* switch according to coding mode */
    case 0: /* coded using constant number of bits */
        for (i = 0; i < ctx->num_quant_units; i++)
            chan->qu_wordlen[i] = FUNC3(gb, 3);
        break;
    case 1:
        if (ch_num) {
            if ((ret = FUNC7(gb, chan, ctx, avctx)) < 0)
                return ret;

            if (chan->num_coded_vals) {
                vlc_tab = &wl_vlc_tabs[FUNC3(gb, 2)];

                for (i = 0; i < chan->num_coded_vals; i++) {
                    delta = FUNC6(gb, vlc_tab->table, vlc_tab->bits, 1);
                    chan->qu_wordlen[i] = (ref_chan->qu_wordlen[i] + delta) & 7;
                }
            }
        } else {
            weight_idx = FUNC3(gb, 2);
            if ((ret = FUNC7(gb, chan, ctx, avctx)) < 0)
                return ret;

            if (chan->num_coded_vals) {
                pos = FUNC3(gb, 5);
                if (pos > chan->num_coded_vals) {
                    FUNC2(avctx, AV_LOG_ERROR,
                           "WL mode 1: invalid position!\n");
                    return AVERROR_INVALIDDATA;
                }

                delta_bits = FUNC3(gb, 2);
                min_val    = FUNC3(gb, 3);

                for (i = 0; i < pos; i++)
                    chan->qu_wordlen[i] = FUNC3(gb, 3);

                for (i = pos; i < chan->num_coded_vals; i++)
                    chan->qu_wordlen[i] = (min_val + FUNC5(gb, delta_bits)) & 7;
            }
        }
        break;
    case 2:
        if ((ret = FUNC7(gb, chan, ctx, avctx)) < 0)
            return ret;

        if (ch_num && chan->num_coded_vals) {
            vlc_tab = &wl_vlc_tabs[FUNC3(gb, 2)];
            delta = FUNC6(gb, vlc_tab->table, vlc_tab->bits, 1);
            chan->qu_wordlen[0] = (ref_chan->qu_wordlen[0] + delta) & 7;

            for (i = 1; i < chan->num_coded_vals; i++) {
                diff = ref_chan->qu_wordlen[i] - ref_chan->qu_wordlen[i - 1];
                delta = FUNC6(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_wordlen[i] = (chan->qu_wordlen[i - 1] + diff + delta) & 7;
            }
        } else if (chan->num_coded_vals) {
            flag    = FUNC3(gb, 1);
            vlc_tab = &wl_vlc_tabs[FUNC3(gb, 1)];

            start_val = FUNC3(gb, 3);
            FUNC8(start_val,
                            &atrac3p_wl_shapes[start_val][FUNC3(gb, 4)][0],
                            chan->qu_wordlen, chan->num_coded_vals);

            if (!flag) {
                for (i = 0; i < chan->num_coded_vals; i++) {
                    delta = FUNC6(gb, vlc_tab->table, vlc_tab->bits, 1);
                    chan->qu_wordlen[i] = (chan->qu_wordlen[i] + delta) & 7;
                }
            } else {
                for (i = 0; i < (chan->num_coded_vals & - 2); i += 2)
                    if (!FUNC4(gb)) {
                        chan->qu_wordlen[i]     = (chan->qu_wordlen[i] +
                                                   FUNC6(gb, vlc_tab->table,
                                                            vlc_tab->bits, 1)) & 7;
                        chan->qu_wordlen[i + 1] = (chan->qu_wordlen[i + 1] +
                                                   FUNC6(gb, vlc_tab->table,
                                                            vlc_tab->bits, 1)) & 7;
                    }

                if (chan->num_coded_vals & 1)
                    chan->qu_wordlen[i] = (chan->qu_wordlen[i] +
                                           FUNC6(gb, vlc_tab->table,
                                                    vlc_tab->bits, 1)) & 7;
            }
        }
        break;
    case 3:
        weight_idx = FUNC3(gb, 2);
        if ((ret = FUNC7(gb, chan, ctx, avctx)) < 0)
            return ret;

        if (chan->num_coded_vals) {
            vlc_tab = &wl_vlc_tabs[FUNC3(gb, 2)];

            /* first coefficient is coded directly */
            chan->qu_wordlen[0] = FUNC3(gb, 3);

            for (i = 1; i < chan->num_coded_vals; i++) {
                delta = FUNC6(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_wordlen[i] = (chan->qu_wordlen[i - 1] + delta) & 7;
            }
        }
        break;
    }

    if (chan->fill_mode == 2) {
        for (i = chan->num_coded_vals; i < ctx->num_quant_units; i++)
            chan->qu_wordlen[i] = ch_num ? FUNC4(gb) : 1;
    } else if (chan->fill_mode == 3) {
        pos = ch_num ? chan->num_coded_vals + chan->split_point
                     : ctx->num_quant_units - chan->split_point;
        if (pos > FUNC0(chan->qu_wordlen)) {
            FUNC2(avctx, AV_LOG_ERROR, "Split point beyond array\n");
            pos = FUNC0(chan->qu_wordlen);
        }
        for (i = chan->num_coded_vals; i < pos; i++)
            chan->qu_wordlen[i] = 1;
    }

    if (weight_idx)
        return FUNC1(ctx, chan, weight_idx, avctx);

    return 0;
}