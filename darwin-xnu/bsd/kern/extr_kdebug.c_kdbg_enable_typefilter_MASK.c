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
struct TYPE_2__ {int kdebug_flags; } ;

/* Variables and functions */
 int KDBG_RANGECHECK ; 
 int KDBG_TYPEFILTER_CHECK ; 
 int KDBG_VALCHECK ; 
 int /*<<< orphan*/  SLOW_CHECKS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdbg_typefilter ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC0(kdbg_typefilter);
	kd_ctrl_page.kdebug_flags &= ~(KDBG_RANGECHECK | KDBG_VALCHECK);
	kd_ctrl_page.kdebug_flags |= KDBG_TYPEFILTER_CHECK;
	FUNC2(SLOW_CHECKS, 0, TRUE);
	FUNC1();
}