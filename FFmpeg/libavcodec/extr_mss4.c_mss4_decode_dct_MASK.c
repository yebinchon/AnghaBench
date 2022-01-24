#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t LEFT ; 
 size_t TOP ; 
 size_t TOP_LEFT ; 
 int* ff_zigzag_direct ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(GetBitContext *gb, VLC *dc_vlc, VLC *ac_vlc,
                           int *block, int *dc_cache,
                           int bx, int by, uint16_t *quant_mat)
{
    int skip, val, pos = 1, zz_pos, dc;

    FUNC4(block, 0, sizeof(*block) * 64);

    dc = FUNC1(gb, dc_vlc);
    // DC prediction is the same as in MSS3
    if (by) {
        if (bx) {
            int l, tl, t;

            l  = dc_cache[LEFT];
            tl = dc_cache[TOP_LEFT];
            t  = dc_cache[TOP];

            if (FUNC0(t - tl) <= FUNC0(l - tl))
                dc += l;
            else
                dc += t;
        } else {
            dc += dc_cache[TOP];
        }
    } else if (bx) {
        dc += dc_cache[LEFT];
    }
    dc_cache[LEFT] = dc;
    block[0]       = dc * quant_mat[0];

    while (pos < 64) {
        val = FUNC3(gb, ac_vlc->table, 9, 2);
        if (!val)
            return 0;
        if (val == -1)
            return -1;
        if (val == 0xF0) {
            pos += 16;
            continue;
        }
        skip = val >> 4;
        val  = FUNC2(gb, val & 0xF);
        pos += skip;
        if (pos >= 64)
            return -1;

        zz_pos = ff_zigzag_direct[pos];
        block[zz_pos] = val * quant_mat[zz_pos];
        pos++;
    }

    return pos == 64 ? 0 : -1;
}