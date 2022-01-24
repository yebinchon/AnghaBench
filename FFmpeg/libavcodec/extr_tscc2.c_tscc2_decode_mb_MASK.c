#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct TYPE_9__ {int* block; TYPE_3__* ac_vlc; TYPE_2__* nc_vlc; TYPE_1__ dc_vlc; int /*<<< orphan*/  gb; } ;
struct TYPE_8__ {int /*<<< orphan*/  table; } ;
struct TYPE_7__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_4__ TSCC2Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 size_t* ff_zigzag_scan ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,int) ; 

__attribute__((used)) static int FUNC7(TSCC2Context *c, int *q, int vlc_set,
                           uint8_t *dst, int stride, int plane)
{
    GetBitContext *gb = &c->gb;
    int prev_dc, dc, nc, ac, bpos, val;
    int i, j, k, l;

    if (FUNC1(gb)) {
        if (FUNC1(gb)) {
            val = FUNC0(gb, 8);
            for (i = 0; i < 8; i++, dst += stride)
                FUNC4(dst, val, 16);
        } else {
            if (FUNC2(gb) < 16 * 8 * 8)
                return AVERROR_INVALIDDATA;
            for (i = 0; i < 8; i++) {
                for (j = 0; j < 16; j++)
                    dst[j] = FUNC0(gb, 8);
                dst += stride;
            }
        }
        return 0;
    }

    prev_dc = 0;
    for (j = 0; j < 2; j++) {
        for (k = 0; k < 4; k++) {
            if (!(j | k)) {
                dc = FUNC0(gb, 8);
            } else {
                dc = FUNC3(gb, c->dc_vlc.table, 9, 2);
                if (dc == -1)
                    return AVERROR_INVALIDDATA;
                if (dc == 0x100)
                    dc = FUNC0(gb, 8);
            }
            dc          = (dc + prev_dc) & 0xFF;
            prev_dc     = dc;
            c->block[0] = dc;

            nc = FUNC3(gb, c->nc_vlc[vlc_set].table, 9, 1);
            if (nc == -1)
                return AVERROR_INVALIDDATA;

            bpos = 1;
            FUNC4(c->block + 1, 0, 15 * sizeof(*c->block));
            for (l = 0; l < nc; l++) {
                ac = FUNC3(gb, c->ac_vlc[vlc_set].table, 9, 2);
                if (ac == -1)
                    return AVERROR_INVALIDDATA;
                if (ac == 0x1000)
                    ac = FUNC0(gb, 12);
                bpos += ac & 0xF;
                if (bpos >= 16)
                    return AVERROR_INVALIDDATA;
                val = FUNC5(ac >> 4, 8);
                c->block[ff_zigzag_scan[bpos++]] = val;
            }
            FUNC6(c->block, q, dst + k * 4, stride);
        }
        dst += 4 * stride;
    }
    return 0;
}