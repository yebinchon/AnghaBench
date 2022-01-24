#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;
struct TYPE_7__ {int* permutated; } ;
struct TYPE_9__ {int qscale; int* block_last_index; int /*<<< orphan*/  gb; TYPE_1__ intra_scantable; } ;
struct TYPE_8__ {int /*<<< orphan*/ * rl_vlc; } ;
typedef  TYPE_2__ RLTable ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TEX_VLC_BITS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 TYPE_2__ ff_rl_mpeg1 ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static inline int FUNC10(MpegEncContext *s,
                                                int16_t *block, int n)
{
    int level, i, j, run;
    RLTable *rl              = &ff_rl_mpeg1;
    uint8_t *const scantable = s->intra_scantable.permutated;
    const int qscale         = s->qscale;

    {
        FUNC4(re, &s->gb);
        i = -1;
        // Special case for first coefficient, no need to add second VLC table.
        FUNC8(re, &s->gb);
        if (((int32_t) FUNC1(re, &s->gb)) < 0) {
            level = (3 * qscale) >> 1;
            level = (level - 1) | 1;
            if (FUNC1(re, &s->gb) & 0x40000000)
                level = -level;
            block[0] = level;
            i++;
            FUNC7(re, &s->gb, 2);
            if (((int32_t) FUNC1(re, &s->gb)) <= (int32_t) 0xBFFFFFFF)
                goto end;
        }

        /* now quantify & encode AC coefficients */
        for (;;) {
            FUNC2(level, run, re, &s->gb, rl->rl_vlc[0],
                       TEX_VLC_BITS, 2, 0);

            if (level != 0) {
                i += run;
                if (i > MAX_INDEX)
                    break;
                j = scantable[i];
                level = ((level * 2 + 1) * qscale) >> 1;
                level = (level - 1) | 1;
                level = (level ^ FUNC5(re, &s->gb, 1)) -
                        FUNC5(re, &s->gb, 1);
                FUNC7(re, &s->gb, 1);
            } else {
                /* escape */
                run = FUNC6(re, &s->gb, 6) + 1;
                FUNC3(re, &s->gb, 6);
                FUNC8(re, &s->gb);
                level = FUNC5(re, &s->gb, 8);
                FUNC7(re, &s->gb, 8);
                if (level == -128) {
                    level = FUNC6(re, &s->gb, 8) - 256;
                    FUNC7(re, &s->gb, 8);
                } else if (level == 0) {
                    level = FUNC6(re, &s->gb, 8);
                    FUNC7(re, &s->gb, 8);
                }
                i += run;
                if (i > MAX_INDEX)
                    break;
                j = scantable[i];
                if (level < 0) {
                    level = -level;
                    level = ((level * 2 + 1) * qscale) >> 1;
                    level = (level - 1) | 1;
                    level = -level;
                } else {
                    level = ((level * 2 + 1) * qscale) >> 1;
                    level = (level - 1) | 1;
                }
            }

            block[j] = level;
            if (((int32_t) FUNC1(re, &s->gb)) <= (int32_t) 0xBFFFFFFF)
                break;
            FUNC8(re, &s->gb);
        }
end:
        FUNC3(re, &s->gb, 2);
        FUNC0(re, &s->gb);
    }

    FUNC9(s, i);

    s->block_last_index[n] = i;
    return 0;
}