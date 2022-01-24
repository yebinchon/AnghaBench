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
struct TYPE_3__ {size_t lag; int /*<<< orphan*/ * used; int /*<<< orphan*/  coef; } ;
typedef  TYPE_1__ LongTermPrediction ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_LTP_LONG_SFB ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ltp_coef ; 

__attribute__((used)) static void FUNC3(LongTermPrediction *ltp,
                       GetBitContext *gb, uint8_t max_sfb)
{
    int sfb;

    ltp->lag  = FUNC1(gb, 11);
    ltp->coef = ltp_coef[FUNC1(gb, 3)];
    for (sfb = 0; sfb < FUNC0(max_sfb, MAX_LTP_LONG_SFB); sfb++)
        ltp->used[sfb] = FUNC2(gb);
}