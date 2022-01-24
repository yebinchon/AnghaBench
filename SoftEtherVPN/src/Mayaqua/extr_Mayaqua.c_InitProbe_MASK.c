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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  probe_buf ; 
 int probe_enabled ; 
 int /*<<< orphan*/  probe_lock ; 
 scalar_t__ probe_start ; 

void FUNC3()
{
	probe_buf = FUNC1();
	probe_lock = FUNC2();
	probe_enabled = false;

	probe_start = 0;

#ifdef	OS_WIN32
	probe_start = MsGetHiResCounter();
#endif	// OS_WIN32
}