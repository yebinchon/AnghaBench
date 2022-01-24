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
typedef  int /*<<< orphan*/  throttle_window_size ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int*,int) ; 
 scalar_t__ FUNC1 (char*,int*,int) ; 
 size_t THROTTLE_LEVEL_TIER1 ; 
 size_t THROTTLE_LEVEL_TIER2 ; 
 size_t THROTTLE_LEVEL_TIER3 ; 
 int* throttle_windows_msecs ; 

__attribute__((used)) static void
FUNC2(void)
{
	int throttle_window_size;

	/*
	 * The hierarchy of throttle window values is as follows:
	 * - Global defaults
	 * - Device tree properties
	 * - Boot-args
	 * All values are specified in msecs.
	 */

	/* Override global values with device-tree properties */
	if (FUNC0("kern.io_throttle_window_tier1", &throttle_window_size, sizeof(throttle_window_size)))
		throttle_windows_msecs[THROTTLE_LEVEL_TIER1] = throttle_window_size;

	if (FUNC0("kern.io_throttle_window_tier2", &throttle_window_size, sizeof(throttle_window_size)))
		throttle_windows_msecs[THROTTLE_LEVEL_TIER2] = throttle_window_size;

	if (FUNC0("kern.io_throttle_window_tier3", &throttle_window_size, sizeof(throttle_window_size)))
		throttle_windows_msecs[THROTTLE_LEVEL_TIER3] = throttle_window_size;
	
	/* Override with boot-args */
	if (FUNC1("io_throttle_window_tier1", &throttle_window_size, sizeof(throttle_window_size)))
		throttle_windows_msecs[THROTTLE_LEVEL_TIER1] = throttle_window_size;

	if (FUNC1("io_throttle_window_tier2", &throttle_window_size, sizeof(throttle_window_size)))
		throttle_windows_msecs[THROTTLE_LEVEL_TIER2] = throttle_window_size;
	
	if (FUNC1("io_throttle_window_tier3", &throttle_window_size, sizeof(throttle_window_size)))
		throttle_windows_msecs[THROTTLE_LEVEL_TIER3] = throttle_window_size;
}