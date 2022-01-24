#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kPEHaltCPU ; 
 int /*<<< orphan*/  kPERestartCPU ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((noreturn))
void
FUNC2(boolean_t reboot)
{
	if (reboot) {
		FUNC1("MACH Reboot\n");
		FUNC0(kPERestartCPU);
	} else {
		FUNC1("CPU halted\n");
		FUNC0(kPEHaltCPU);
	}
	while (1);
}