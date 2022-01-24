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
typedef  int int16_t ;
typedef  enum Rate { ____Placeholder_Rate } Rate ;
struct TYPE_3__ {int ad_cb_lag; int ad_cb_gain; } ;
typedef  TYPE_1__ G723_1_Subframe ;

/* Variables and functions */
 int /*<<< orphan*/  PITCH_ORDER ; 
 int RATE_6300 ; 
 int SUBFRAME_LEN ; 
 int* adaptive_cb_gain170 ; 
 int* adaptive_cb_gain85 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

void FUNC4(int16_t *vector, int16_t *prev_excitation,
                                  int pitch_lag, G723_1_Subframe *subfrm,
                                  enum Rate cur_rate)
{
    int16_t residual[SUBFRAME_LEN + PITCH_ORDER - 1];
    const int16_t *cb_ptr;
    int lag = pitch_lag + subfrm->ad_cb_lag - 1;

    int i;
    int sum;

    FUNC3(residual, prev_excitation, lag);

    /* Select quantization table */
    if (cur_rate == RATE_6300 && pitch_lag < SUBFRAME_LEN - 2) {
        cb_ptr = adaptive_cb_gain85;
    } else
        cb_ptr = adaptive_cb_gain170;

    /* Calculate adaptive vector */
    cb_ptr += subfrm->ad_cb_gain * 20;
    for (i = 0; i < SUBFRAME_LEN; i++) {
        sum = FUNC2(residual + i, cb_ptr, PITCH_ORDER);
        vector[i] = FUNC1(1 << 15, FUNC0(sum, sum)) >> 16;
    }
}