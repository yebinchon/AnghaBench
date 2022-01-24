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
typedef  int /*<<< orphan*/  wait_result_t ;

/* Variables and functions */
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dlil_ifnet_lock ; 
 int /*<<< orphan*/  ifnet_delayed_run ; 
 int /*<<< orphan*/  ifnet_detacher_thread_cont ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *v, wait_result_t w)
{
#pragma unused(v, w)
	FUNC1();
	(void) FUNC3(&ifnet_delayed_run, &dlil_ifnet_lock,
	    (PZERO - 1), "ifnet_detacher", 0, ifnet_detacher_thread_cont);
	/*
	 * msleep0() shouldn't have returned as PCATCH was not set;
	 * therefore assert in this case.
	 */
	FUNC2();
	FUNC0(0);
}