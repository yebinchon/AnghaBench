#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int prev_dc_stride; int* prev_dc; int* qmat; int /*<<< orphan*/  sign_model; int /*<<< orphan*/  ac_model; int /*<<< orphan*/  dc_model; } ;
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  TYPE_1__ DCTBlockCoder ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* ff_zigzag_direct ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(RangeCoder *c, DCTBlockCoder *bc, int *block,
                      int bx, int by)
{
    int skip, val, sign, pos = 1, zz_pos, dc;
    int blk_pos = bx + by * bc->prev_dc_stride;

    FUNC2(block, 0, sizeof(*block) * 64);

    dc = FUNC1(c, &bc->dc_model);
    if (by) {
        if (bx) {
            int l, tl, t;

            l  = bc->prev_dc[blk_pos - 1];
            tl = bc->prev_dc[blk_pos - 1 - bc->prev_dc_stride];
            t  = bc->prev_dc[blk_pos     - bc->prev_dc_stride];

            if (FUNC0(t - tl) <= FUNC0(l - tl))
                dc += l;
            else
                dc += t;
        } else {
            dc += bc->prev_dc[blk_pos - bc->prev_dc_stride];
        }
    } else if (bx) {
        dc += bc->prev_dc[bx - 1];
    }
    bc->prev_dc[blk_pos] = dc;
    block[0]             = dc * bc->qmat[0];

    while (pos < 64) {
        val = FUNC4(c, &bc->ac_model);
        if (!val)
            return 0;
        if (val == 0xF0) {
            pos += 16;
            continue;
        }
        skip = val >> 4;
        val  = val & 0xF;
        if (!val)
            return -1;
        pos += skip;
        if (pos >= 64)
            return -1;

        sign = FUNC5(c, &bc->sign_model);
        if (val > 1) {
            val--;
            val = (1 << val) + FUNC3(c, val);
        }
        if (!sign)
            val = -val;

        zz_pos = ff_zigzag_direct[pos];
        block[zz_pos] = val * bc->qmat[zz_pos];
        pos++;
    }

    return pos == 64 ? 0 : -1;
}