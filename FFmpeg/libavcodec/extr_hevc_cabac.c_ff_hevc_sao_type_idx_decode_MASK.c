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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SAO_BAND ; 
 int SAO_EDGE ; 
 size_t SAO_TYPE_IDX ; 
 int /*<<< orphan*/ * elem_offset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(HEVCContext *s)
{
    if (!FUNC0(elem_offset[SAO_TYPE_IDX]))
        return 0;

    if (!FUNC1(&s->HEVClc->cc))
        return SAO_BAND;
    return SAO_EDGE;
}