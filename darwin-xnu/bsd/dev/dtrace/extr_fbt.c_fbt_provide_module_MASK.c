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
struct modctl {int /*<<< orphan*/  mod_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTRACE_KERNEL_SYMBOLS_NEVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED ; 
 int /*<<< orphan*/  MODCTL_FBT_INVALID ; 
 int /*<<< orphan*/  MODCTL_FBT_PRIVATE_PROBES_PROVIDED ; 
 int /*<<< orphan*/  MODCTL_FBT_PROBES_PROVIDED ; 
 int /*<<< orphan*/  MODCTL_FBT_PROVIDE_BLACKLISTED_PROBES ; 
 scalar_t__ FUNC2 (struct modctl*) ; 
 scalar_t__ FUNC3 (struct modctl*) ; 
 scalar_t__ FUNC4 (struct modctl*) ; 
 scalar_t__ FUNC5 (struct modctl*) ; 
 scalar_t__ FUNC6 (struct modctl*) ; 
 scalar_t__ dtrace_kernel_symbol_mode ; 
 scalar_t__ FUNC7 (struct modctl*) ; 
 int /*<<< orphan*/  FUNC8 (struct modctl*) ; 
 int /*<<< orphan*/  FUNC9 (struct modctl*) ; 
 scalar_t__ ignore_fbt_blacklist ; 
 int /*<<< orphan*/  mod_lock ; 

void
FUNC10(void *arg, struct modctl *ctl)
{
#pragma unused(arg)
	FUNC0(ctl != NULL);
	FUNC0(dtrace_kernel_symbol_mode != DTRACE_KERNEL_SYMBOLS_NEVER);
	FUNC1(&mod_lock, LCK_MTX_ASSERT_OWNED);

	// Update the "ignore blacklist" bit
	if (ignore_fbt_blacklist)
		ctl->mod_flags |= MODCTL_FBT_PROVIDE_BLACKLISTED_PROBES;

	if (FUNC2(ctl))
		return;

	if (FUNC7(ctl)) {
		ctl->mod_flags |= MODCTL_FBT_INVALID;
		return;
	}

	if (FUNC5(ctl)) {
		FUNC8(ctl);
		ctl->mod_flags |= MODCTL_FBT_PROBES_PROVIDED;
		if (FUNC3(ctl))
			ctl->mod_flags |= MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED;
		return;
	}

	if (FUNC6(ctl)) {
		FUNC9(ctl);
		ctl->mod_flags |= MODCTL_FBT_PROBES_PROVIDED;
		if (FUNC4(ctl))
			ctl->mod_flags |= MODCTL_FBT_PRIVATE_PROBES_PROVIDED;
		if (FUNC3(ctl))
			ctl->mod_flags |= MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED;
		return;
	}
}