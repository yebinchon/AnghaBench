#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {int dpcm_direction; int mb_intra; size_t chroma_format; int /*<<< orphan*/  gb; int /*<<< orphan*/ ** dpcm_macroblock; int /*<<< orphan*/  avctx; int /*<<< orphan*/ ** block32; int /*<<< orphan*/  qscale; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int SLICE_END ; 
 int SLICE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int* mpeg4_block_count ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(MpegEncContext *s, int16_t block_[12][64])
{
    int i;

    s->dpcm_direction = 0;

    /* StudioMacroblock */
    /* Assumes I-VOP */
    s->mb_intra = 1;
    if (FUNC1(&s->gb)) { /* compression_mode */
        /* DCT */
        /* macroblock_type, 1 or 2-bit VLC */
        if (!FUNC1(&s->gb)) {
            FUNC8(&s->gb);
            s->qscale = FUNC5(s);
        }

        for (i = 0; i < mpeg4_block_count[s->chroma_format]; i++) {
            if (FUNC4(s, (*s->block32)[i], i) < 0)
                return AVERROR_INVALIDDATA;
        }
    } else {
        /* DPCM */
        FUNC0(s->avctx, &s->gb, "DPCM block start");
        s->dpcm_direction = FUNC1(&s->gb) ? -1 : 1;
        for (i = 0; i < 3; i++) {
            if (FUNC3(s, (*s->dpcm_macroblock)[i], i) < 0)
                return AVERROR_INVALIDDATA;
        }
    }

    if (FUNC2(&s->gb) >= 24 && FUNC7(&s->gb, 23) == 0) {
        FUNC6(&s->gb);
        return SLICE_END;
    }

    //vcon-stp9L1.bits (first frame)
    if (FUNC2(&s->gb) == 0)
        return SLICE_END;

    //vcon-stp2L1.bits, vcon-stp3L1.bits, vcon-stp6L1.bits, vcon-stp7L1.bits, vcon-stp8L1.bits, vcon-stp10L1.bits (first frame)
    if (FUNC2(&s->gb) < 8U && FUNC7(&s->gb, FUNC2(&s->gb)) == 0)
        return SLICE_END;

    return SLICE_OK;
}