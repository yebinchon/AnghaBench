#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ err; } ;
struct TYPE_11__ {int /*<<< orphan*/  hash; scalar_t__ stack_pos; TYPE_1__ els_ctx; scalar_t__ next_run_pos; } ;
typedef  TYPE_2__ ePICContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int,scalar_t__*,scalar_t__*) ; 
 int FUNC4 (TYPE_2__*,int,int,int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int*) ; 
 int FUNC5 (TYPE_2__*,int,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(ePICContext *dc, uint8_t *out, int tile_height,
                            int tile_width, int stride)
{
    int x, y;
    uint32_t pix;
    uint32_t *curr_row = NULL, *above_row = NULL, *above2_row;

    for (y = 0; y < tile_height; y++, out += stride) {
        above2_row = above_row;
        above_row  = curr_row;
        curr_row   = (uint32_t *) out;

        for (x = 0, dc->next_run_pos = 0; x < tile_width;) {
            if (dc->els_ctx.err)
                return AVERROR_INVALIDDATA; // bail out in the case of ELS overflow

            pix = curr_row[x - 1]; // get W pixel

            if (y >= 1 && x >= 2 &&
                pix != curr_row[x - 2]  && pix != above_row[x - 1] &&
                pix != above_row[x - 2] && pix != above_row[x] &&
                !FUNC1(&dc->hash, pix)) {
                curr_row[x] = FUNC3(dc, x, y, curr_row, above_row);
                x++;
            } else {
                int got_pixel, run;
                dc->stack_pos = 0; // empty stack

                if (y < 2 || x < 2 || x == tile_width - 1) {
                    run       = 1;
                    got_pixel = FUNC5(dc, x, y, curr_row, above_row, &pix);
                } else {
                    got_pixel = FUNC4(dc, x, y, tile_width,
                                                       curr_row, above_row,
                                                       above2_row, &pix, &run);
                    if (got_pixel < 0)
                        return got_pixel;
                }

                if (!got_pixel && !FUNC6(dc, x, y, run,
                                                           tile_width, curr_row,
                                                           above_row, &pix)) {
                    uint32_t ref_pix = curr_row[x - 1];
                    if (!x || !FUNC2(dc, ref_pix, &pix)) {
                        pix = FUNC3(dc, x, y, curr_row, above_row);
                        if (FUNC7(dc, pix))
                            return AVERROR_INVALIDDATA;

                        if (x) {
                            int ret = FUNC0(&dc->hash,
                                                              ref_pix,
                                                              pix);
                            if (ret)
                                return ret;
                        }
                    }
                }
                for (; run > 0; x++, run--)
                    curr_row[x] = pix;
            }
        }
    }

    return 0;
}