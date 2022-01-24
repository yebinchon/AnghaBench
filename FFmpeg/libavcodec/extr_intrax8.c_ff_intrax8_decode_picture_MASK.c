#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int dquant; int quant; int qsum; int loopfilter; int mb_x; int mb_y; int divide_quant_dc_luma; int quant_dc_chroma; int divide_quant_dc_chroma; int mb_height; int mb_width; int* dest; int /*<<< orphan*/  frame; int /*<<< orphan*/  avctx; int /*<<< orphan*/ * gb; int /*<<< orphan*/  use_quant_matrix; } ;
struct TYPE_11__ {int* qscale_table; int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ Picture ;
typedef  TYPE_2__ IntraX8Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  PICT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 

int FUNC8(IntraX8Context *w, Picture *pict,
                              GetBitContext *gb, int *mb_x, int *mb_y,
                              int dquant, int quant_offset,
                              int loopfilter, int lowdelay)
{
    int mb_xy;

    w->gb     = gb;
    w->dquant = dquant;
    w->quant  = dquant >> 1;
    w->qsum   = quant_offset;
    w->frame  = pict->f;
    w->loopfilter = loopfilter;
    w->use_quant_matrix = FUNC1(w->gb);

    w->mb_x = *mb_x;
    w->mb_y = *mb_y;

    w->divide_quant_dc_luma = ((1 << 16) + (w->quant >> 1)) / w->quant;
    if (w->quant < 5) {
        w->quant_dc_chroma        = w->quant;
        w->divide_quant_dc_chroma = w->divide_quant_dc_luma;
    } else {
        w->quant_dc_chroma        = w->quant + ((w->quant + 3) >> 3);
        w->divide_quant_dc_chroma = ((1 << 16) + (w->quant_dc_chroma >> 1)) / w->quant_dc_chroma;
    }
    FUNC6(w);

    for (w->mb_y = 0; w->mb_y < w->mb_height * 2; w->mb_y++) {
        FUNC5(w, w->frame);
        mb_xy = (w->mb_y >> 1) * (w->mb_width + 1);
        for (w->mb_x = 0; w->mb_x < w->mb_width * 2; w->mb_x++) {
            FUNC3(w);
            if (FUNC7(w, 0))
                goto error;
            if (FUNC2(w, 0))
                goto error;

            if (w->mb_x & w->mb_y & 1) {
                FUNC4(w);

                /* when setting up chroma, no vlc is read,
                 * so no error condition can be reached */
                FUNC7(w, 1);
                if (FUNC2(w, 1))
                    goto error;

                FUNC7(w, 2);
                if (FUNC2(w, 2))
                    goto error;

                w->dest[1] += 8;
                w->dest[2] += 8;

                pict->qscale_table[mb_xy] = w->quant;
                mb_xy++;
            }
            w->dest[0] += 8;
        }
        if (w->mb_y & 1)
            FUNC0(w->avctx, w->frame, w->frame,
                               (w->mb_y - 1) * 8, 16,
                               PICT_FRAME, 0, lowdelay);
    }

error:
    *mb_x = w->mb_x;
    *mb_y = w->mb_y;

    return 0;
}