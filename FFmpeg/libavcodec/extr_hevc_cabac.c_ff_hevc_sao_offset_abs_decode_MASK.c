#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* sps; } ;
struct TYPE_9__ {TYPE_3__* HEVClc; TYPE_2__ ps; } ;
struct TYPE_8__ {int /*<<< orphan*/  cc; } ;
struct TYPE_6__ {int /*<<< orphan*/  bit_depth; } ;
typedef  TYPE_4__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(HEVCContext *s)
{
    int i = 0;
    int length = (1 << (FUNC0(s->ps.sps->bit_depth, 10) - 5)) - 1;

    while (i < length && FUNC1(&s->HEVClc->cc))
        i++;
    return i;
}