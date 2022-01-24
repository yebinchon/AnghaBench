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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ global_logical_writes_count ; 
 scalar_t__ io_telemetry_limit ; 

__attribute__((used)) static boolean_t 
FUNC1(int64_t io_delta)
{
	int64_t old_count, new_count;
	boolean_t needs_telemetry;
	
	do {
		new_count = old_count = global_logical_writes_count;
		new_count += io_delta;
		if (new_count >= io_telemetry_limit) {
			new_count = 0;
			needs_telemetry = TRUE;
		} else {
			needs_telemetry = FALSE;
		}
	} while(!FUNC0(old_count, new_count, &global_logical_writes_count));
	return needs_telemetry;
}