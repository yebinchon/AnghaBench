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
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;
struct TYPE_4__ {int /*<<< orphan*/  table; } ;
struct TYPE_5__ {TYPE_1__ hq_ac_vlc; } ;
typedef  TYPE_2__ HQContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__* ff_hq_ac_skips ; 
 unsigned int* ff_hq_ac_syms ; 
 scalar_t__**** ff_hq_quants ; 
 size_t* ff_zigzag_direct ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(HQContext *c, GetBitContext *gb, int16_t block[64],
                           int qsel, int is_chroma, int is_hqa)
{
    const int32_t *q;
    int val, pos = 1;

    FUNC3(block, 0, 64 * sizeof(*block));

    if (!is_hqa) {
        block[0] = FUNC1(gb, 9) * 64;
        q = ff_hq_quants[qsel][is_chroma][FUNC0(gb, 2)];
    } else {
        q = ff_hq_quants[qsel][is_chroma][FUNC0(gb, 2)];
        block[0] = FUNC1(gb, 9) * 64;
    }

    for (;;) {
        val = FUNC2(gb, c->hq_ac_vlc.table, 9, 2);
        if (val < 0)
            return AVERROR_INVALIDDATA;

        pos += ff_hq_ac_skips[val];
        if (pos >= 64)
            break;
        block[ff_zigzag_direct[pos]] = (int)(ff_hq_ac_syms[val] * (unsigned)q[pos]) >> 12;
        pos++;
    }

    return 0;
}