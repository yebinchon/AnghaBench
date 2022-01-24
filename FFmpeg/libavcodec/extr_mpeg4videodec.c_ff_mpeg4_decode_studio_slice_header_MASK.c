#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {int mb_width; int mb_height; scalar_t__ mb_num; int /*<<< orphan*/  qscale; scalar_t__ mb_y; scalar_t__ mb_x; int /*<<< orphan*/  gb; } ;
struct TYPE_7__ {scalar_t__ shape; TYPE_1__ m; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ Mpeg4DecContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ BIN_ONLY_SHAPE ; 
 scalar_t__ SLICE_START_CODE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(Mpeg4DecContext *ctx)
{
    MpegEncContext *s = &ctx->m;
    GetBitContext *gb = &s->gb;
    unsigned vlc_len;
    uint16_t mb_num;

    if (FUNC3(gb) >= 32 && FUNC4(gb, 32) == SLICE_START_CODE) {
        vlc_len = FUNC0(s->mb_width * s->mb_height) + 1;
        mb_num = FUNC1(gb, vlc_len);

        if (mb_num >= s->mb_num)
            return AVERROR_INVALIDDATA;

        s->mb_x = mb_num % s->mb_width;
        s->mb_y = mb_num / s->mb_width;

        if (ctx->shape != BIN_ONLY_SHAPE)
            s->qscale = FUNC5(s);

        if (FUNC2(gb)) {  /* slice_extension_flag */
            FUNC8(gb);   /* intra_slice */
            FUNC8(gb);   /* slice_VOP_id_enable */
            FUNC7(gb, 6); /* slice_VOP_id */
            while (FUNC2(gb)) /* extra_bit_slice */
                FUNC7(gb, 8); /* extra_information_slice */
        }

        FUNC6(s);
    }
    else {
        return AVERROR_INVALIDDATA;
    }

    return 0;
}