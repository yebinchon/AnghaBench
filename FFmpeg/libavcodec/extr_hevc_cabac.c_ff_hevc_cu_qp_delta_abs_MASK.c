#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* HEVClc; int /*<<< orphan*/  avctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  cc; } ;
typedef  TYPE_2__ HEVCContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t CU_QP_DELTA ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__* elem_offset ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(HEVCContext *s)
{
    int prefix_val = 0;
    int suffix_val = 0;
    int inc = 0;

    while (prefix_val < 5 && FUNC0(elem_offset[CU_QP_DELTA] + inc)) {
        prefix_val++;
        inc = 1;
    }
    if (prefix_val >= 5) {
        int k = 0;
        while (k < 7 && FUNC2(&s->HEVClc->cc)) {
            suffix_val += 1 << k;
            k++;
        }
        if (k == 7) {
            FUNC1(s->avctx, AV_LOG_ERROR, "CABAC_MAX_BIN : %d\n", k);
            return AVERROR_INVALIDDATA;
        }

        while (k--)
            suffix_val += FUNC2(&s->HEVClc->cc) << k;
    }
    return prefix_val + suffix_val;
}