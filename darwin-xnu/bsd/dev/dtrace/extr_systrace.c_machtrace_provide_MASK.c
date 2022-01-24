#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
struct TYPE_3__ {void* stsy_return; void* stsy_entry; int /*<<< orphan*/ * stsy_underlying; } ;

/* Variables and functions */
 void* DTRACE_IDNONE ; 
 int /*<<< orphan*/  MACHTRACE_ARTIFICIAL_FRAMES ; 
 int NSYSCALL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * mach_syscall_name_table ; 
 int /*<<< orphan*/  mach_trap_table ; 
 int /*<<< orphan*/  machtrace_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 TYPE_1__* machtrace_sysent ; 

__attribute__((used)) static void
FUNC5(void *arg, const dtrace_probedesc_t *desc)
{
#pragma unused(arg) /* __APPLE__ */
    
	int i;

	if (desc != NULL)
		return;

	FUNC4(mach_trap_table, &machtrace_sysent);

	for (i = 0; i < NSYSCALL; i++) {
		
		if (machtrace_sysent[i].stsy_underlying == NULL)
			continue;

		if (FUNC3(machtrace_id, NULL,
					mach_syscall_name_table[i], "entry") != 0)
			continue;

		(void) FUNC2(machtrace_id, NULL, mach_syscall_name_table[i],
					   "entry", MACHTRACE_ARTIFICIAL_FRAMES,
					   (void *)((uintptr_t)FUNC0(i)));
		(void) FUNC2(machtrace_id, NULL, mach_syscall_name_table[i],
					   "return", MACHTRACE_ARTIFICIAL_FRAMES,
					   (void *)((uintptr_t)FUNC1(i)));

		machtrace_sysent[i].stsy_entry = DTRACE_IDNONE;
		machtrace_sysent[i].stsy_return = DTRACE_IDNONE;
	}
}