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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int16_t ;

/* Variables and functions */
 int COL_SHIFT ; 
 int W4 ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static inline void FUNC2(int16_t *col)
{
    int i;
    uint64_t l, r;

    for (i = 0; i < 8; ++i) {
        int a0 = col[i] + (1 << (COL_SHIFT - 1)) / W4;

        a0 *= W4;
        col[i] = a0 >> COL_SHIFT;
    }

    l = FUNC0(col + 0 * 4); r = FUNC0(col + 1 * 4);
    FUNC1(l, col +  2 * 4); FUNC1(r, col +  3 * 4);
    FUNC1(l, col +  4 * 4); FUNC1(r, col +  5 * 4);
    FUNC1(l, col +  6 * 4); FUNC1(r, col +  7 * 4);
    FUNC1(l, col +  8 * 4); FUNC1(r, col +  9 * 4);
    FUNC1(l, col + 10 * 4); FUNC1(r, col + 11 * 4);
    FUNC1(l, col + 12 * 4); FUNC1(r, col + 13 * 4);
    FUNC1(l, col + 14 * 4); FUNC1(r, col + 15 * 4);
}