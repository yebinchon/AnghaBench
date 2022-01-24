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
typedef  short int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int COL_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SQRT2 ; 
 int /*<<< orphan*/  TAN1 ; 
 int /*<<< orphan*/  TAN2 ; 

__attribute__((used)) static void FUNC2(short *const in)
{
    int mm0, mm1, mm2, mm3, mm4, mm5, mm6, mm7, spill;

    // odd

    mm7 = (int) in[1 * 8];
    mm4 = FUNC1(TAN1, mm7, 16);

    mm6 = mm7 + mm4;
    mm5 = mm7 - mm4;
    mm6 = 2 * FUNC1(SQRT2, mm6, 16); // 2*sqrt2
    mm5 = 2 * FUNC1(SQRT2, mm5, 16);

    // even

    mm0 = mm1 = (int) in[0 * 8];
    mm3 = (int) in[2 * 8];
    mm2 = FUNC1(TAN2, mm3, 16);

    FUNC0(mm0, mm3, spill);
    FUNC0(mm0, mm7, spill);
    in[8 * 0] = (int16_t) (mm0 >> COL_SHIFT);
    in[8 * 7] = (int16_t) (mm7 >> COL_SHIFT);
    FUNC0(mm3, mm4, mm0);
    in[8 * 3] = (int16_t) (mm3 >> COL_SHIFT);
    in[8 * 4] = (int16_t) (mm4 >> COL_SHIFT);

    FUNC0(mm1, mm2, mm0);
    FUNC0(mm1, mm6, mm0);
    in[8 * 1] = (int16_t) (mm1 >> COL_SHIFT);
    in[8 * 6] = (int16_t) (mm6 >> COL_SHIFT);
    FUNC0(mm2, mm5, mm0);
    in[8 * 2] = (int16_t) (mm2 >> COL_SHIFT);
    in[8 * 5] = (int16_t) (mm5 >> COL_SHIFT);
}