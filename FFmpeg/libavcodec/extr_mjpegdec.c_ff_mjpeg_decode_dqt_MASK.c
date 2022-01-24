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
struct TYPE_3__ {int** quant_matrixes; int* qscale; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MJpegDecodeContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(MJpegDecodeContext *s)
{
    int len, index, i;

    len = FUNC2(&s->gb, 16) - 2;

    if (8*len > FUNC3(&s->gb)) {
        FUNC1(s->avctx, AV_LOG_ERROR, "dqt: len %d is too large\n", len);
        return AVERROR_INVALIDDATA;
    }

    while (len >= 65) {
        int pr = FUNC2(&s->gb, 4);
        if (pr > 1) {
            FUNC1(s->avctx, AV_LOG_ERROR, "dqt: invalid precision\n");
            return AVERROR_INVALIDDATA;
        }
        index = FUNC2(&s->gb, 4);
        if (index >= 4)
            return -1;
        FUNC1(s->avctx, AV_LOG_DEBUG, "index=%d\n", index);
        /* read quant table */
        for (i = 0; i < 64; i++) {
            s->quant_matrixes[index][i] = FUNC2(&s->gb, pr ? 16 : 8);
            if (s->quant_matrixes[index][i] == 0) {
                FUNC1(s->avctx, AV_LOG_ERROR, "dqt: 0 quant value\n");
                return AVERROR_INVALIDDATA;
            }
        }

        // XXX FIXME fine-tune, and perhaps add dc too
        s->qscale[index] = FUNC0(s->quant_matrixes[index][1],
                                 s->quant_matrixes[index][8]) >> 1;
        FUNC1(s->avctx, AV_LOG_DEBUG, "qscale[%d]: %d\n",
               index, s->qscale[index]);
        len -= 1 + 64 * (1+pr);
    }
    return 0;
}