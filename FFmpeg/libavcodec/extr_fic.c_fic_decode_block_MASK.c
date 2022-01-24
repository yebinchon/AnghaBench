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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int16_t ;
struct TYPE_3__ {int* qmat; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ FICContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 size_t* ff_zigzag_direct ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(FICContext *ctx, GetBitContext *gb,
                            uint8_t *dst, int stride, int16_t *block, int *is_p)
{
    int i, num_coeff;

    if (FUNC3(gb) < 8)
        return AVERROR_INVALIDDATA;

    /* Is it a skip block? */
    if (FUNC2(gb)) {
        *is_p = 1;
        return 0;
    }

    FUNC5(block, 0, sizeof(*block) * 64);

    num_coeff = FUNC1(gb, 7);
    if (num_coeff > 64)
        return AVERROR_INVALIDDATA;

    for (i = 0; i < num_coeff; i++) {
        int v = FUNC4(gb);
        if (v < -2048 || v > 2048)
             return AVERROR_INVALIDDATA;
        block[ff_zigzag_direct[i]] = v *
                                     ctx->qmat[ff_zigzag_direct[i]];
    }

    FUNC0(dst, stride, block);

    return 0;
}