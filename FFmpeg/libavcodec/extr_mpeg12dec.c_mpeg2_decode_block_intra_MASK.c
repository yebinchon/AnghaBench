#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int int16_t ;
struct TYPE_8__ {int* permutated; } ;
struct TYPE_10__ {int qscale; int* intra_matrix; int* chroma_intra_matrix; int* last_dc; int intra_dc_precision; int* block_last_index; int /*<<< orphan*/  gb; scalar_t__ intra_vlc_format; int /*<<< orphan*/  avctx; TYPE_1__ intra_scantable; } ;
struct TYPE_9__ {int /*<<< orphan*/ * rl_vlc; } ;
typedef  TYPE_2__ RLTable ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TEX_VLC_BITS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ ff_rl_mpeg1 ; 
 TYPE_2__ ff_rl_mpeg2 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static inline int FUNC11(MpegEncContext *s,
                                           int16_t *block, int n)
{
    int level, dc, diff, i, j, run;
    int component;
    RLTable *rl;
    uint8_t *const scantable = s->intra_scantable.permutated;
    const uint16_t *quant_matrix;
    const int qscale = s->qscale;
    int mismatch;

    /* DC coefficient */
    if (n < 4) {
        quant_matrix = s->intra_matrix;
        component    = 0;
    } else {
        quant_matrix = s->chroma_intra_matrix;
        component    = (n & 1) + 1;
    }
    diff = FUNC9(&s->gb, component);
    if (diff >= 0xffff)
        return AVERROR_INVALIDDATA;
    dc  = s->last_dc[component];
    dc += diff;
    s->last_dc[component] = dc;
    block[0] = dc * (1 << (3 - s->intra_dc_precision));
    FUNC10(s->avctx, "dc=%d\n", block[0]);
    mismatch = block[0] ^ 1;
    i = 0;
    if (s->intra_vlc_format)
        rl = &ff_rl_mpeg2;
    else
        rl = &ff_rl_mpeg1;

    {
        FUNC3(re, &s->gb);
        /* now quantify & encode AC coefficients */
        for (;;) {
            FUNC7(re, &s->gb);
            FUNC1(level, run, re, &s->gb, rl->rl_vlc[0],
                       TEX_VLC_BITS, 2, 0);

            if (level == 127) {
                break;
            } else if (level != 0) {
                i += run;
                if (i > MAX_INDEX)
                    break;
                j = scantable[i];
                level = (level * qscale * quant_matrix[j]) >> 4;
                level = (level ^ FUNC4(re, &s->gb, 1)) -
                        FUNC4(re, &s->gb, 1);
                FUNC2(re, &s->gb, 1);
            } else {
                /* escape */
                run = FUNC5(re, &s->gb, 6) + 1;
                FUNC2(re, &s->gb, 6);
                FUNC7(re, &s->gb);
                level = FUNC4(re, &s->gb, 12);
                FUNC6(re, &s->gb, 12);
                i += run;
                if (i > MAX_INDEX)
                    break;
                j = scantable[i];
                if (level < 0) {
                    level = (-level * qscale * quant_matrix[j]) >> 4;
                    level = -level;
                } else {
                    level = (level * qscale * quant_matrix[j]) >> 4;
                }
            }

            mismatch ^= level;
            block[j]  = level;
        }
        FUNC0(re, &s->gb);
    }
    block[63] ^= mismatch & 1;

    FUNC8(s, i);

    s->block_last_index[n] = i;
    return 0;
}