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
struct TYPE_2__ {int kdebug_slowcheck; int /*<<< orphan*/  kdebug_flags; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  KDBG_NOWRAP ; 
 int SLOW_NOLOG ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  kds_spin_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(uint32_t old_slowcheck)
{
	int s = FUNC2(FALSE);
	FUNC0(kds_spin_lock);

	kd_ctrl_page.kdebug_flags &= ~KDBG_NOWRAP;

	if ( !(old_slowcheck & SLOW_NOLOG))
		kd_ctrl_page.kdebug_slowcheck &= ~SLOW_NOLOG;

	FUNC1(kds_spin_lock);
	FUNC2(s);
}