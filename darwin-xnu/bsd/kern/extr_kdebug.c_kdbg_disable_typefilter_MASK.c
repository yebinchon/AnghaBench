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
struct TYPE_2__ {int kdebug_flags; int /*<<< orphan*/  kdebug_iops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int KDBG_PIDCHECK ; 
 int KDBG_PIDEXCLUDE ; 
 int KDBG_TYPEFILTER_CHECK ; 
 int /*<<< orphan*/  KD_CALLBACK_TYPEFILTER_CHANGED ; 
 int /*<<< orphan*/  SLOW_CHECKS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdbg_typefilter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	bool notify_iops = kd_ctrl_page.kdebug_flags & KDBG_TYPEFILTER_CHECK;
	kd_ctrl_page.kdebug_flags &= ~KDBG_TYPEFILTER_CHECK;

	if ((kd_ctrl_page.kdebug_flags & (KDBG_PIDCHECK | KDBG_PIDEXCLUDE))) {
		FUNC2(SLOW_CHECKS, 0, TRUE);
	} else {
		FUNC2(SLOW_CHECKS, 0, FALSE);
	}
	FUNC0();

	if (notify_iops) {
		/*
		 * Notify IOPs that the typefilter will now allow everything.
		 * Otherwise, they won't know a typefilter is no longer in
		 * effect.
		 */
		FUNC3(kdbg_typefilter);
		FUNC1(kd_ctrl_page.kdebug_iops,
				KD_CALLBACK_TYPEFILTER_CHANGED, kdbg_typefilter);
	}
}