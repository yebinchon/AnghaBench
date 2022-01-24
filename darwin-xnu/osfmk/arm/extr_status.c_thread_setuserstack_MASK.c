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
typedef  int /*<<< orphan*/  thread_t ;
struct arm_saved_state {int /*<<< orphan*/  sp; } ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;

/* Variables and functions */
 struct arm_saved_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void
FUNC2(thread_t thread, mach_vm_address_t user_stack)
{
	struct arm_saved_state *sv;

#define thread_setuserstack_kprintf(x...)	/* kprintf("thread_setuserstac
						 * k: " x) */

	sv = FUNC0(thread);

	sv->sp = user_stack;

	thread_setuserstack_kprintf("stack %x\n", sv->sp);

	return;
}