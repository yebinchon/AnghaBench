#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* x; void* y; } ;
typedef  TYPE_1__ svq1_pmv ;
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (void*,void*,void*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 TYPE_2__ svq1_motion_component ; 

__attribute__((used)) static int FUNC4(GetBitContext *bitbuf, svq1_pmv *mv,
                                     svq1_pmv **pmv)
{
    int diff;
    int i;

    for (i = 0; i < 2; i++) {
        /* get motion code */
        diff = FUNC1(bitbuf, svq1_motion_component.table, 7, 2);
        if (diff < 0)
            return AVERROR_INVALIDDATA;
        else if (diff) {
            if (FUNC0(bitbuf))
                diff = -diff;
        }

        /* add median of motion vector predictors and clip result */
        if (i == 1)
            mv->y = FUNC3(diff + FUNC2(pmv[0]->y, pmv[1]->y, pmv[2]->y), 6);
        else
            mv->x = FUNC3(diff + FUNC2(pmv[0]->x, pmv[1]->x, pmv[2]->x), 6);
    }

    return 0;
}