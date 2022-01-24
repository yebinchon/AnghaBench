#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline unsigned int FUNC4(GetBitContext *gb, int k, int bps)
{
    unsigned int x = FUNC1(gb);

    if (x > 8) { /* RICE THRESHOLD */
        /* use alternative encoding */
        x = FUNC0(gb, bps);
    } else if (k != 1) {
        int extrabits = FUNC2(gb, k);

        /* multiply x by 2^k - 1, as part of their strange algorithm */
        x = (x << k) - x;

        if (extrabits > 1) {
            x += extrabits - 1;
            FUNC3(gb, k);
        } else
            FUNC3(gb, k - 1);
    }
    return x;
}