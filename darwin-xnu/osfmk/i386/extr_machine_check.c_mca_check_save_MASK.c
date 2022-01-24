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
struct TYPE_2__ {int /*<<< orphan*/  cpu_mca_state; } ;

/* Variables and functions */
 scalar_t__ CLEAR ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ mca_dump_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
	if (mca_dump_state > CLEAR)
		FUNC1(FUNC0()->cpu_mca_state);
}