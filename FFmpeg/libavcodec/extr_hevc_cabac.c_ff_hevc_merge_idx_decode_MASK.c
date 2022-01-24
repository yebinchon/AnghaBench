#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int max_num_merge_cand; } ;
struct TYPE_7__ {TYPE_2__* HEVClc; TYPE_1__ sh; } ;
struct TYPE_6__ {int /*<<< orphan*/  cc; } ;
typedef  TYPE_3__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MERGE_IDX ; 
 int /*<<< orphan*/ * elem_offset ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(HEVCContext *s)
{
    int i = FUNC0(elem_offset[MERGE_IDX]);

    if (i != 0) {
        while (i < s->sh.max_num_merge_cand-1 && FUNC1(&s->HEVClc->cc))
            i++;
    }
    return i;
}