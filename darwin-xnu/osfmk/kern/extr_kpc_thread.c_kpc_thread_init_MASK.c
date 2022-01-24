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
 int /*<<< orphan*/  kpc_thread_lckgrp ; 
 int /*<<< orphan*/  kpc_thread_lckgrp_attr ; 
 int /*<<< orphan*/  kpc_thread_lock ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	kpc_thread_lckgrp_attr = FUNC1();
	kpc_thread_lckgrp = FUNC0("kpc", kpc_thread_lckgrp_attr);
	FUNC2(&kpc_thread_lock, kpc_thread_lckgrp, LCK_ATTR_NULL);
}