#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int int16_t ;
struct TYPE_6__ {int* permutated; } ;
struct TYPE_8__ {int* quant_matrix; int qscale; int version; int* last_dc; int* block_last_index; int /*<<< orphan*/  gb; int /*<<< orphan*/  mb_y; int /*<<< orphan*/  mb_x; int /*<<< orphan*/  avctx; TYPE_1__ scantable; } ;
struct TYPE_7__ {int /*<<< orphan*/ * rl_vlc; } ;
typedef  TYPE_2__ RLTable ;
typedef  TYPE_3__ MDECContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TEX_VLC_BITS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ ff_rl_mpeg1 ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static inline int FUNC11(MDECContext *a, int16_t *block, int n)
{
    int level, diff, i, j, run;
    int component;
    RLTable *rl = &ff_rl_mpeg1;
    uint8_t * const scantable = a->scantable.permutated;
    const uint16_t *quant_matrix = a->quant_matrix;
    const int qscale = a->qscale;

    /* DC coefficient */
    if (a->version == 2) {
        block[0] = 2 * FUNC10(&a->gb, 10) + 1024;
    } else {
        component = (n <= 3 ? 0 : n - 4 + 1);
        diff = FUNC9(&a->gb, component);
        if (diff >= 0xffff)
            return AVERROR_INVALIDDATA;
        a->last_dc[component] += diff;
        block[0] = a->last_dc[component] * (1 << 3);
    }

    i = 0;
    {
        FUNC3(re, &a->gb);
        /* now quantify & encode AC coefficients */
        for (;;) {
            FUNC7(re, &a->gb);
            FUNC1(level, run, re, &a->gb, rl->rl_vlc[0], TEX_VLC_BITS, 2, 0);

            if (level == 127) {
                break;
            } else if (level != 0) {
                i += run;
                if (i > 63) {
                    FUNC8(a->avctx, AV_LOG_ERROR,
                           "ac-tex damaged at %d %d\n", a->mb_x, a->mb_y);
                    return AVERROR_INVALIDDATA;
                }
                j     = scantable[i];
                level = (level * qscale * quant_matrix[j]) >> 3;
                level = (level ^ FUNC4(re, &a->gb, 1)) - FUNC4(re, &a->gb, 1);
                FUNC2(re, &a->gb, 1);
            } else {
                /* escape */
                run = FUNC5(re, &a->gb, 6)+1; FUNC2(re, &a->gb, 6);
                FUNC7(re, &a->gb);
                level = FUNC4(re, &a->gb, 10); FUNC6(re, &a->gb, 10);
                i += run;
                if (i > 63) {
                    FUNC8(a->avctx, AV_LOG_ERROR,
                           "ac-tex damaged at %d %d\n", a->mb_x, a->mb_y);
                    return AVERROR_INVALIDDATA;
                }
                j = scantable[i];
                if (level < 0) {
                    level = -level;
                    level = (level * (unsigned)qscale * quant_matrix[j]) >> 3;
                    level = (level - 1) | 1;
                    level = -level;
                } else {
                    level = (level * (unsigned)qscale * quant_matrix[j]) >> 3;
                    level = (level - 1) | 1;
                }
            }

            block[j] = level;
        }
        FUNC0(re, &a->gb);
    }
    a->block_last_index[n] = i;
    return 0;
}