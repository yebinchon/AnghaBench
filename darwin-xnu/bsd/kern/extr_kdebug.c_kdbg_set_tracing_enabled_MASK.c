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
typedef  int uint32_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {int enabled; int /*<<< orphan*/  kdebug_iops; int /*<<< orphan*/  kdebug_slowcheck; int /*<<< orphan*/  oldest_time; } ;

/* Variables and functions */
 int FALSE ; 
 int KDEBUG_ENABLE_PPT ; 
 int KDEBUG_ENABLE_TRACE ; 
 int /*<<< orphan*/  KD_CALLBACK_KDEBUG_DISABLED ; 
 int /*<<< orphan*/  KD_CALLBACK_KDEBUG_ENABLED ; 
 int /*<<< orphan*/  KD_CALLBACK_SYNC_FLUSH ; 
 int /*<<< orphan*/  SLOW_NOLOG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int kdebug_enable ; 
 int /*<<< orphan*/  kds_spin_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(boolean_t enabled, uint32_t trace_type)
{
	int s = FUNC5(FALSE);
	FUNC3(kds_spin_lock);
	if (enabled) {
		/*
		 * The oldest valid time is now; reject old events from IOPs.
		 */
		kd_ctrl_page.oldest_time = FUNC2();
		kdebug_enable |= trace_type;
		kd_ctrl_page.kdebug_slowcheck &= ~SLOW_NOLOG;
		kd_ctrl_page.enabled = 1;
		FUNC0();
	} else {
		kdebug_enable &= ~(KDEBUG_ENABLE_TRACE|KDEBUG_ENABLE_PPT);
		kd_ctrl_page.kdebug_slowcheck |= SLOW_NOLOG;
		kd_ctrl_page.enabled = 0;
		FUNC0();
	}
	FUNC4(kds_spin_lock);
	FUNC5(s);

	if (enabled) {
		FUNC1(kd_ctrl_page.kdebug_iops, KD_CALLBACK_KDEBUG_ENABLED, NULL);
	} else {
		/*
		 * If you do not flush the IOP trace buffers, they can linger
		 * for a considerable period; consider code which disables and
		 * deallocates without a final sync flush.
		 */
		FUNC1(kd_ctrl_page.kdebug_iops, KD_CALLBACK_KDEBUG_DISABLED, NULL);
		FUNC1(kd_ctrl_page.kdebug_iops, KD_CALLBACK_SYNC_FLUSH, NULL);
	}
}