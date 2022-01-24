#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int lsp_bit0; int lsp_bit1; int lsp_split; int lsp_bit2; int ppc_period_bit; int pgain_bit; TYPE_2__* fmode; } ;
typedef  TYPE_3__ TwinVQModeTab ;
struct TYPE_11__ {int window_type; size_t ftype; void** g_coef; void** p_coef; int /*<<< orphan*/  ppc_coeffs; void*** lpc_idx2; void** lpc_idx1; void** lpc_hist_idx; void** sub_gain_bits; void** gain_bits; int /*<<< orphan*/ ** bark_use_hist; void**** bark1; int /*<<< orphan*/  main_coeffs; } ;
typedef  TYPE_4__ TwinVQFrameData ;
struct TYPE_12__ {scalar_t__ cur_frame; scalar_t__ frames_per_packet; int /*<<< orphan*/  is_6kbps; TYPE_4__* bits; TYPE_1__* avctx; TYPE_3__* mtab; } ;
typedef  TYPE_5__ TwinVQContext ;
struct TYPE_9__ {int sub; int bark_n_coef; int bark_n_bit; } ;
struct TYPE_8__ {int channels; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t TWINVQ_FT_LONG ; 
 size_t TWINVQ_FT_SHORT ; 
 int TWINVQ_GAIN_BITS ; 
 int TWINVQ_SUB_GAIN_BITS ; 
 int TWINVQ_WINDOW_TYPE_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t* ff_twinvq_wtype_to_ftype_table ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, TwinVQContext *tctx,
                                    const uint8_t *buf, int buf_size)
{
    TwinVQFrameData     *bits;
    const TwinVQModeTab *mtab = tctx->mtab;
    int channels              = tctx->avctx->channels;
    int sub;
    GetBitContext gb;
    int i, j, k, ret;

    if ((ret = FUNC4(&gb, buf, buf_size)) < 0)
        return ret;

    for (tctx->cur_frame = 0; tctx->cur_frame < tctx->frames_per_packet;
         tctx->cur_frame++) {
        bits = tctx->bits + tctx->cur_frame;

        bits->window_type = FUNC1(&gb, TWINVQ_WINDOW_TYPE_BITS);

        if (bits->window_type > 8) {
            FUNC0(avctx, AV_LOG_ERROR, "Invalid window type, broken sample?\n");
            return AVERROR_INVALIDDATA;
        }

        bits->ftype = ff_twinvq_wtype_to_ftype_table[tctx->bits[tctx->cur_frame].window_type];

        sub = mtab->fmode[bits->ftype].sub;

        if (bits->ftype != TWINVQ_FT_SHORT && !tctx->is_6kbps)
            FUNC1(&gb, 2);

        FUNC5(tctx, &gb, bits->main_coeffs, bits->ftype);

        for (i = 0; i < channels; i++)
            for (j = 0; j < sub; j++)
                for (k = 0; k < mtab->fmode[bits->ftype].bark_n_coef; k++)
                    bits->bark1[i][j][k] =
                        FUNC1(&gb, mtab->fmode[bits->ftype].bark_n_bit);

        for (i = 0; i < channels; i++)
            for (j = 0; j < sub; j++)
                bits->bark_use_hist[i][j] = FUNC2(&gb);

        if (bits->ftype == TWINVQ_FT_LONG) {
            for (i = 0; i < channels; i++)
                bits->gain_bits[i] = FUNC1(&gb, TWINVQ_GAIN_BITS);
        } else {
            for (i = 0; i < channels; i++) {
                bits->gain_bits[i] = FUNC1(&gb, TWINVQ_GAIN_BITS);
                for (j = 0; j < sub; j++)
                    bits->sub_gain_bits[i * sub + j] =
                        FUNC1(&gb, TWINVQ_SUB_GAIN_BITS);
            }
        }

        for (i = 0; i < channels; i++) {
            bits->lpc_hist_idx[i] = FUNC1(&gb, mtab->lsp_bit0);
            bits->lpc_idx1[i]     = FUNC1(&gb, mtab->lsp_bit1);

            for (j = 0; j < mtab->lsp_split; j++)
                bits->lpc_idx2[i][j] = FUNC1(&gb, mtab->lsp_bit2);
        }

        if (bits->ftype == TWINVQ_FT_LONG) {
            FUNC5(tctx, &gb, bits->ppc_coeffs, 3);
            for (i = 0; i < channels; i++) {
                bits->p_coef[i] = FUNC1(&gb, mtab->ppc_period_bit);
                bits->g_coef[i] = FUNC1(&gb, mtab->pgain_bit);
            }
        }

        // subframes are aligned to nibbles
        if (FUNC3(&gb) & 3)
            FUNC6(&gb, 4 - (FUNC3(&gb) & 3));
    }

    return (FUNC3(&gb) + 7) / 8;
}