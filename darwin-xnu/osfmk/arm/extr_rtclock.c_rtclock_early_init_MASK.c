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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  tmp_mv ;

/* Variables and functions */
 int /*<<< orphan*/  KF_MATV_OVRD ; 
 scalar_t__ FUNC0 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ absolute_time_validation ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timebase_callback ; 

void
FUNC3(void)
{
	FUNC1(timebase_callback);
#if DEVELOPMENT || DEBUG
	uint32_t tmp_mv = 1;
	if (kern_feature_override(KF_MATV_OVRD)) {
		absolute_time_validation = 0;
	}
	if (PE_parse_boot_argn("timebase_validation", &tmp_mv, sizeof(tmp_mv))) {
		if (tmp_mv == 0) {
			absolute_time_validation = 0;
		}
	}
#endif
}