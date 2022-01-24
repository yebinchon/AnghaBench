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
struct TYPE_3__ {size_t coef_idx; int /*<<< orphan*/  coef; void* lag; } ;
typedef  TYPE_1__ LongTermPrediction ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/ * ltp_coef ; 
 size_t FUNC2 (float,int /*<<< orphan*/ *,int) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static void FUNC4(float *buf, const float *new, LongTermPrediction *ltp)
{
    int i, j, lag = 0, max_corr = 0;
    float max_ratio = 0.0f;
    for (i = 0; i < 2048; i++) {
        float corr, s0 = 0.0f, s1 = 0.0f;
        const int start = FUNC0(0, i - 1024);
        for (j = start; j < 2048; j++) {
            const int idx = j - i + 1024;
            s0 += new[j]*buf[idx];
            s1 += buf[idx]*buf[idx];
        }
        corr = s1 > 0.0f ? s0/FUNC3(s1) : 0.0f;
        if (corr > max_corr) {
            max_corr = corr;
            lag = i;
            max_ratio = corr/(2048-start);
        }
    }
    ltp->lag = FUNC0(FUNC1(lag, 11), 0);
    ltp->coef_idx = FUNC2(max_ratio, ltp_coef, 8);
    ltp->coef = ltp_coef[ltp->coef_idx];
}