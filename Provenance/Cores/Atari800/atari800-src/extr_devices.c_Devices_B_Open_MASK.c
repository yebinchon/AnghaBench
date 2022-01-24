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
struct TYPE_2__ {int /*<<< orphan*/  ready; scalar_t__ pos; int /*<<< orphan*/  url; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_ClrN ; 
 int /*<<< orphan*/  CPU_SetN ; 
 int CPU_regY ; 
 int /*<<< orphan*/  Devices_ICAX1Z ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ dev_b_status ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (devbug)
		FUNC0("B: OPEN");

	if (FUNC1(Devices_ICAX1Z) != 8) {
		CPU_regY = 163; /* read-only device */
		CPU_SetN;
		return;
	}

	FUNC2(dev_b_status.url, 0, sizeof(dev_b_status.url));
	dev_b_status.pos = 0;
	dev_b_status.ready = FALSE;

	CPU_regY = 1;	/* open OK */
	CPU_ClrN;
}