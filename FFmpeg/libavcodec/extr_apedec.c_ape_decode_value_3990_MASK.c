#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ksum; } ;
typedef  TYPE_1__ APERice ;
typedef  int /*<<< orphan*/  APEContext ;

/* Variables and functions */
 int MODEL_ELEMENTS ; 
 int /*<<< orphan*/  counts_3980 ; 
 int /*<<< orphan*/  counts_diff_3980 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static inline int FUNC5(APEContext *ctx, APERice *rice)
{
    unsigned int x, overflow;
    int base, pivot;

    pivot = rice->ksum >> 5;
    if (pivot == 0)
        pivot = 1;

    overflow = FUNC3(ctx, counts_3980, counts_diff_3980);

    if (overflow == (MODEL_ELEMENTS - 1)) {
        overflow  = (unsigned)FUNC0(ctx, 16) << 16;
        overflow |= FUNC0(ctx, 16);
    }

    if (pivot < 0x10000) {
        base = FUNC1(ctx, pivot);
        FUNC2(ctx, 1, base);
    } else {
        int base_hi = pivot, base_lo;
        int bbits = 0;

        while (base_hi & ~0xFFFF) {
            base_hi >>= 1;
            bbits++;
        }
        base_hi = FUNC1(ctx, base_hi + 1);
        FUNC2(ctx, 1, base_hi);
        base_lo = FUNC1(ctx, 1 << bbits);
        FUNC2(ctx, 1, base_lo);

        base = (base_hi << bbits) + base_lo;
    }

    x = base + overflow * pivot;

    FUNC4(rice, x);

    /* Convert to signed */
    return ((x >> 1) ^ ((x & 1) - 1)) + 1;
}