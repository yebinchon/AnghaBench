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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  scalar_t__ UInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ TCP_CCDBG_NOUNIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ tcp_ccdbg_unit ; 

__attribute__((used)) static errno_t
FUNC2(kern_ctl_ref kctl, u_int32_t unit, void *uinfo)
{
#pragma unused(kctl, unit, uinfo)

	if (unit == tcp_ccdbg_unit) {
		UInt32 old_value = tcp_ccdbg_unit;
		UInt32 new_value = TCP_CCDBG_NOUNIT;
		if (tcp_ccdbg_unit == new_value)
			return (0);

		if (!FUNC0(old_value, new_value,
			&tcp_ccdbg_unit))
			FUNC1(LOG_DEBUG, 
			    "failed to disconnect tcp_cc debug control");
	}
	return (0);
}