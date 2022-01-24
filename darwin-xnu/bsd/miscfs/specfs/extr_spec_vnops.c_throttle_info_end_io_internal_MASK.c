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
struct _throttle_io_info_t {scalar_t__* throttle_inflight_count; int /*<<< orphan*/ * throttle_window_start_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int THROTTLE_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC3(struct _throttle_io_info_t *info, int throttle_level) {
	if (throttle_level == THROTTLE_LEVEL_NONE) {
		return;
	}

	FUNC2(&info->throttle_window_start_timestamp[throttle_level]);
	FUNC0(&info->throttle_inflight_count[throttle_level]);
	FUNC1(info->throttle_inflight_count[throttle_level] >= 0);
}