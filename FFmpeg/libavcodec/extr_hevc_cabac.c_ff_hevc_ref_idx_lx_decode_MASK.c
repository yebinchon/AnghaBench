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
struct TYPE_5__ {TYPE_1__* HEVClc; } ;
struct TYPE_4__ {int /*<<< orphan*/  cc; } ;
typedef  TYPE_2__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 size_t REF_IDX_L0 ; 
 scalar_t__* elem_offset ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(HEVCContext *s, int num_ref_idx_lx)
{
    int i = 0;
    int max = num_ref_idx_lx - 1;
    int max_ctx = FUNC0(max, 2);

    while (i < max_ctx && FUNC1(elem_offset[REF_IDX_L0] + i))
        i++;
    if (i == 2) {
        while (i < max && FUNC2(&s->HEVClc->cc))
            i++;
    }

    return i;
}