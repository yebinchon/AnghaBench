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
struct Decorr {int delta; int value; int weightA; int weightB; int sumA; int sumB; int /*<<< orphan*/  samplesB; int /*<<< orphan*/  samplesA; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {scalar_t__ gt16bit; struct Decorr* dps; } ;
typedef  TYPE_1__ WavPackExtraInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct Decorr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct Decorr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct Decorr*) ; 

__attribute__((used)) static void FUNC6(WavPackExtraInfo *info,
                                 int32_t *in_left,  int32_t *in_right,
                                 int32_t *out_left, int32_t *out_right,
                                 int nb_samples, int tindex)
{
    struct Decorr dp = {0}, *dppi = info->dps + tindex;
    int delta = dppi->delta, pre_delta;
    int term = dppi->value;

    if (delta == 7)
        pre_delta = 7;
    else if (delta < 2)
        pre_delta = 3;
    else
        pre_delta = delta + 1;

    dp.value = term;
    dp.delta = pre_delta;
    FUNC2(in_left, in_right, out_left, out_right,
                  FUNC1(2048, nb_samples), &dp, -1);
    dp.delta = delta;

    if (tindex == 0) {
        FUNC5(&dp);
    } else {
        FUNC0(dp.samplesA);
        FUNC0(dp.samplesB);
    }

    FUNC4(dppi->samplesA, dp.samplesA, sizeof(dp.samplesA));
    FUNC4(dppi->samplesB, dp.samplesB, sizeof(dp.samplesB));
    dppi->weightA = dp.weightA;
    dppi->weightB = dp.weightB;

    if (delta == 0) {
        dp.delta = 1;
        FUNC2(in_left, in_right, out_left, out_right, nb_samples, &dp, 1);
        dp.delta = 0;
        FUNC4(dp.samplesA, dppi->samplesA, sizeof(dp.samplesA));
        FUNC4(dp.samplesB, dppi->samplesB, sizeof(dp.samplesB));
        dppi->weightA = dp.weightA = dp.sumA / nb_samples;
        dppi->weightB = dp.weightB = dp.sumB / nb_samples;
    }

    if (info->gt16bit)
        FUNC2(in_left, in_right, out_left, out_right,
                           nb_samples, &dp, 1);
    else
        FUNC3(in_left, in_right, out_left, out_right,
                            nb_samples, &dp);
}