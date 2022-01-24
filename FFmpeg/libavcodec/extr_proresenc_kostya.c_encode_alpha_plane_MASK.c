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
typedef  int uint16_t ;
struct TYPE_3__ {int alpha_bits; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ ProresContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(ProresContext *ctx, PutBitContext *pb,
                              int mbs_per_slice, uint16_t *blocks,
                              int quant)
{
    const int abits = ctx->alpha_bits;
    const int mask  = (1 << abits) - 1;
    const int num_coeffs = mbs_per_slice * 256;
    int saved_pos = FUNC3(pb);
    int prev = mask, cur;
    int idx = 0;
    int run = 0;

    cur = blocks[idx++];
    FUNC1(pb, cur, prev, abits);
    prev = cur;
    do {
        cur = blocks[idx++];
        if (cur != prev) {
            FUNC2 (pb, run);
            FUNC1(pb, cur, prev, abits);
            prev = cur;
            run  = 0;
        } else {
            run++;
        }
    } while (idx < num_coeffs);
    if (run)
        FUNC2(pb, run);
    FUNC0(pb);
    return (FUNC3(pb) - saved_pos) >> 3;
}