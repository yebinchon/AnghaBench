#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ mach_call_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_4__ {scalar_t__ mach_trap_function; } ;
struct TYPE_3__ {scalar_t__ stsy_entry; scalar_t__ stsy_return; int /*<<< orphan*/  stsy_underlying; } ;

/* Variables and functions */
 scalar_t__ DTRACE_IDNONE ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 int FUNC1 (uintptr_t) ; 
 scalar_t__ dtrace_machtrace_syscall ; 
 int /*<<< orphan*/  dtrace_systrace_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* mach_trap_table ; 
 TYPE_1__* machtrace_sysent ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id) /* __APPLE__ */
      
	int sysnum = FUNC1((uintptr_t)parg);
	int disable = (machtrace_sysent[sysnum].stsy_entry == DTRACE_IDNONE ||
			machtrace_sysent[sysnum].stsy_return == DTRACE_IDNONE);

	if (disable) {

		FUNC2(&dtrace_systrace_lock);

		if (mach_trap_table[sysnum].mach_trap_function == (mach_call_t)dtrace_machtrace_syscall) {
			FUNC4((vm_offset_t)&machtrace_sysent[sysnum].stsy_underlying, (vm_offset_t)&mach_trap_table[sysnum].mach_trap_function, sizeof(vm_offset_t));
		}
		FUNC3(&dtrace_systrace_lock);
	}

	if (FUNC0((uintptr_t)parg)) {
		machtrace_sysent[sysnum].stsy_entry = DTRACE_IDNONE;
	} else {
		machtrace_sysent[sysnum].stsy_return = DTRACE_IDNONE;
	}
}