#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_5__ {int quality; scalar_t__** imgbuf; TYPE_1__* pic; scalar_t__** prev_vec; int /*<<< orphan*/ * vec_entry_vlc; } ;
struct TYPE_4__ {int* linesize; } ;
typedef  TYPE_2__ MSS4Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int,scalar_t__*,int,int,int const,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int** vec_len_syms ; 

__attribute__((used)) static int FUNC8(MSS4Context *ctx, GetBitContext *gb,
                                   uint8_t *picdst[3], int mb_x, int mb_y)
{
    uint8_t vec[3][4];
    int     vec_len[3];
    int     sel_len[3], sel_flag[3];
    int     i, j, k, mode, split;
    int     prev_vec1 = 0, prev_split = 0;
    int     vals[3] = { 0 };
    int     prev_pix[3] = { 0 };
    int     prev_mode[16] = { 0 };
    uint8_t *dst[3];

    const int val_shift = ctx->quality == 100 ? 0 : 2;

    for (i = 0; i < 3; i++)
        dst[i] = ctx->imgbuf[i];

    for (i = 0; i < 3; i++) {
        vec_len[i] = vec_len_syms[!!i][FUNC4(gb, 0, 3)];
        for (j = 0; j < vec_len[i]; j++) {
            vec[i][j]  = FUNC3(gb, &ctx->vec_entry_vlc[!!i]);
            vec[i][j] += ctx->prev_vec[i][j];
            ctx->prev_vec[i][j] = vec[i][j];
        }
        sel_flag[i] = vec_len[i] > 1;
        sel_len[i]  = vec_len[i] > 2 ? vec_len[i] - 2 : 0;
    }

    for (j = 0; j < 16; j++) {
        if (FUNC2(gb)) {
            split = 0;
            if (FUNC2(gb)) {
                prev_mode[0] = 0;
                vals[0] = vals[1] = vals[2] = 0;
                mode = 2;
            } else {
                mode = FUNC2(gb);
                if (mode)
                    split = FUNC1(gb, 4);
            }
            for (i = 0; i < 16; i++) {
                if (mode <= 1) {
                    vals[0] =  prev_mode[i]       & 7;
                    vals[1] = (prev_mode[i] >> 3) & 7;
                    vals[2] =  prev_mode[i] >> 6;
                    if (mode == 1 && i == split) {
                        FUNC7(gb, vals, sel_flag, sel_len, vals);
                    }
                } else if (mode == 2) {
                    if (FUNC2(gb))
                        FUNC7(gb, vals, sel_flag, sel_len, vals);
                }
                for (k = 0; k < 3; k++)
                    *dst[k]++ = FUNC5(gb, vals[k], vec[k],
                                                 vec_len[k], k,
                                                 val_shift, prev_pix);
                prev_mode[i] = FUNC0(vals);
            }
        } else {
            if (FUNC2(gb)) {
                split = FUNC1(gb, 4);
                if (split >= prev_split)
                    split++;
                prev_split = split;
            } else {
                split = prev_split;
            }
            if (split) {
                vals[0] =  prev_mode[0]       & 7;
                vals[1] = (prev_mode[0] >> 3) & 7;
                vals[2] =  prev_mode[0] >> 6;
                for (i = 0; i < 3; i++) {
                    for (k = 0; k < split; k++) {
                        *dst[i]++ = FUNC5(gb, vals[i], vec[i],
                                                     vec_len[i], i, val_shift,
                                                     prev_pix);
                        prev_mode[k] = FUNC0(vals);
                    }
                }
            }

            if (split != 16) {
                vals[0] =  prev_vec1       & 7;
                vals[1] = (prev_vec1 >> 3) & 7;
                vals[2] =  prev_vec1 >> 6;
                if (FUNC2(gb)) {
                    FUNC7(gb, vals, sel_flag, sel_len, vals);
                    prev_vec1 = FUNC0(vals);
                }
                for (i = 0; i < 3; i++) {
                    for (k = 0; k < 16 - split; k++) {
                        *dst[i]++ = FUNC5(gb, vals[i], vec[i],
                                                     vec_len[i], i, val_shift,
                                                     prev_pix);
                        prev_mode[split + k] = FUNC0(vals);
                    }
                }
            }
        }
    }

    for (i = 0; i < 3; i++)
        for (j = 0; j < 16; j++)
            FUNC6(picdst[i] + mb_x * 16 + j * ctx->pic->linesize[i],
                   ctx->imgbuf[i] + j * 16, 16);

    return 0;
}