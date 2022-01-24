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
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int kpc_initted ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_lckgrp ; 
 int /*<<< orphan*/  sysctl_lckgrp_attr ; 
 int /*<<< orphan*/  sysctl_lock ; 

void
FUNC6(void)
{
	sysctl_lckgrp_attr = FUNC4();
	sysctl_lckgrp = FUNC3("kpc", sysctl_lckgrp_attr);
	FUNC5(&sysctl_lock, sysctl_lckgrp, LCK_ATTR_NULL);

	FUNC0();
	FUNC1();
	FUNC2();

	kpc_initted = 1;
}