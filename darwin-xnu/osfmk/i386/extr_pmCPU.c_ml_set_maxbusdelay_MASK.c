#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* setMaxBusDelay ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY_UNSET ; 
 int /*<<< orphan*/  earlyMaxBusDelay ; 
 TYPE_1__* pmDispatch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(uint32_t mdelay)
{
    uint64_t	maxdelay	= mdelay;

    if (pmDispatch != NULL
	&& pmDispatch->setMaxBusDelay != NULL) {
	earlyMaxBusDelay = DELAY_UNSET;
	pmDispatch->setMaxBusDelay(maxdelay);
    } else
	earlyMaxBusDelay = maxdelay;
}