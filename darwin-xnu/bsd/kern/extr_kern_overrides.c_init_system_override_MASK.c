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
 scalar_t__ cpu_throttle_assert_cnt ; 
 scalar_t__ fast_jetsam_assert_cnt ; 
 scalar_t__ io_throttle_assert_cnt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sys_override_enabled ; 
 int /*<<< orphan*/  sys_override_lock ; 
 int /*<<< orphan*/  sys_override_mtx_attr ; 
 int /*<<< orphan*/  sys_override_mtx_grp ; 
 int /*<<< orphan*/  sys_override_mtx_grp_attr ; 

void
FUNC4()
{
	sys_override_mtx_grp_attr = FUNC2();
	sys_override_mtx_grp = FUNC1("system_override", sys_override_mtx_grp_attr);
	sys_override_mtx_attr = FUNC0();
	FUNC3(&sys_override_lock, sys_override_mtx_grp, sys_override_mtx_attr);
	io_throttle_assert_cnt = cpu_throttle_assert_cnt = fast_jetsam_assert_cnt = 0;
	sys_override_enabled = 1;
}