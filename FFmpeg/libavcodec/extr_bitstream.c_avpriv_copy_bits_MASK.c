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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 scalar_t__ CONFIG_SMALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int const) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

void FUNC9(PutBitContext *pb, const uint8_t *src, int length)
{
    int words = length >> 4;
    int bits  = length & 15;
    int i;

    if (length == 0)
        return;

    FUNC1(length <= FUNC6(pb));

    if (CONFIG_SMALL || words < 16 || FUNC5(pb) & 7) {
        for (i = 0; i < words; i++)
            FUNC4(pb, 16, FUNC0(src + 2 * i));
    } else {
        for (i = 0; FUNC5(pb) & 31; i++)
            FUNC4(pb, 8, src[i]);
        FUNC2(pb);
        FUNC3(FUNC7(pb), src + i, 2 * words - i);
        FUNC8(pb, 2 * words - i);
    }

    FUNC4(pb, bits, FUNC0(src + 2 * words) >> (16 - bits));
}