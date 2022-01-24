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
typedef  int int16_t ;
struct TYPE_6__ {int* permutated; } ;
struct TYPE_8__ {int* quant_matrix; int /*<<< orphan*/  gb; int /*<<< orphan*/  mb_y; int /*<<< orphan*/  mb_x; int /*<<< orphan*/  avctx; TYPE_1__ scantable; } ;
struct TYPE_7__ {int /*<<< orphan*/ * rl_vlc; } ;
typedef  TYPE_2__ RLTable ;
typedef  TYPE_3__ MadContext ;

/* Variables and functions */
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
 TYPE_2__ ff_rl_mpeg1 ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static inline int FUNC10(MadContext *s, int16_t * block)
{
    int level, i, j, run;
    RLTable *rl = &ff_rl_mpeg1;
    const uint8_t *scantable = s->scantable.permutated;
    int16_t *quant_matrix = s->quant_matrix;

    block[0] = (128 + FUNC9(&s->gb, 8)) * quant_matrix[0];

    /* The RL decoder is derived from mpeg1_decode_block_intra;
       Escaped level and run values a decoded differently */
    i = 0;
    {
        FUNC3(re, &s->gb);
        /* now quantify & encode AC coefficients */
        for (;;) {
            FUNC7(re, &s->gb);
            FUNC1(level, run, re, &s->gb, rl->rl_vlc[0], TEX_VLC_BITS, 2, 0);

            if (level == 127) {
                break;
            } else if (level != 0) {
                i += run;
                if (i > 63) {
                    FUNC8(s->avctx, AV_LOG_ERROR,
                           "ac-tex damaged at %d %d\n", s->mb_x, s->mb_y);
                    return -1;
                }
                j = scantable[i];
                level = (level*quant_matrix[j]) >> 4;
                level = (level-1)|1;
                level = (level ^ FUNC4(re, &s->gb, 1)) - FUNC4(re, &s->gb, 1);
                FUNC2(re, &s->gb, 1);
            } else {
                /* escape */
                FUNC7(re, &s->gb);
                level = FUNC4(re, &s->gb, 10); FUNC6(re, &s->gb, 10);

                FUNC7(re, &s->gb);
                run = FUNC5(re, &s->gb, 6)+1; FUNC2(re, &s->gb, 6);

                i += run;
                if (i > 63) {
                    FUNC8(s->avctx, AV_LOG_ERROR,
                           "ac-tex damaged at %d %d\n", s->mb_x, s->mb_y);
                    return -1;
                }
                j = scantable[i];
                if (level < 0) {
                    level = -level;
                    level = (level*quant_matrix[j]) >> 4;
                    level = (level-1)|1;
                    level = -level;
                } else {
                    level = (level*quant_matrix[j]) >> 4;
                    level = (level-1)|1;
                }
            }

            block[j] = level;
        }
        FUNC0(re, &s->gb);
    }
    return 0;
}