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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;
struct TYPE_3__ {int /*<<< orphan*/ * rl_vlc; } ;
typedef  TYPE_1__ RLTable ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TEX_VLC_BITS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ ff_rl_mpeg1 ; 
 int /*<<< orphan*/  re ; 

int FUNC10(GetBitContext *gb,
                                const uint16_t *quant_matrix,
                                uint8_t *const scantable, int last_dc[3],
                                int16_t *block, int index, int qscale)
{
    int dc, diff, i = 0, component;
    RLTable *rl = &ff_rl_mpeg1;

    /* DC coefficient */
    component = index <= 3 ? 0 : index - 4 + 1;

    diff = FUNC9(gb, component);
    if (diff >= 0xffff)
        return AVERROR_INVALIDDATA;

    dc  = last_dc[component];
    dc += diff;
    last_dc[component] = dc;

    block[0] = dc * quant_matrix[0];

    {
        FUNC4(re, gb);
        FUNC8(re, gb);
        if (((int32_t)FUNC1(re, gb)) <= (int32_t)0xBFFFFFFF)
            goto end;

        /* now quantify & encode AC coefficients */
        while (1) {
            int level, run, j;

            FUNC2(level, run, re, gb, rl->rl_vlc[0],
                       TEX_VLC_BITS, 2, 0);

            if (level != 0) {
                i += run;
                if (i > MAX_INDEX)
                    break;

                j = scantable[i];
                level = (level * qscale * quant_matrix[j]) >> 4;
                level = (level - 1) | 1;
                level = (level ^ FUNC5(re, gb, 1)) -
                        FUNC5(re, gb, 1);
                FUNC7(re, gb, 1);
            } else {
                /* escape */
                run = FUNC6(re, gb, 6) + 1;
                FUNC3(re, gb, 6);
                FUNC8(re, gb);
                level = FUNC5(re, gb, 8);
                FUNC7(re, gb, 8);

                if (level == -128) {
                    level = FUNC6(re, gb, 8) - 256;
                    FUNC7(re, gb, 8);
                } else if (level == 0) {
                    level = FUNC6(re, gb, 8);
                    FUNC7(re, gb, 8);
                }

                i += run;
                if (i > MAX_INDEX)
                    break;

                j = scantable[i];
                if (level < 0) {
                    level = -level;
                    level = (level * qscale * quant_matrix[j]) >> 4;
                    level = (level - 1) | 1;
                    level = -level;
                } else {
                    level = (level * qscale * quant_matrix[j]) >> 4;
                    level = (level - 1) | 1;
                }
            }

            block[j] = level;
            if (((int32_t)FUNC1(re, gb)) <= (int32_t)0xBFFFFFFF)
               break;

            FUNC8(re, gb);
        }
end:
        FUNC3(re, gb, 2);
        FUNC0(re, gb);
    }

    if (i > MAX_INDEX)
        i = AVERROR_INVALIDDATA;

    return i;
}