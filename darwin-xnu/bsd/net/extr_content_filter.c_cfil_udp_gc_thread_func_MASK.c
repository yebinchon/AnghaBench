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
typedef  int /*<<< orphan*/  thread_continue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cfil_info_udp_expire ; 
 scalar_t__ cfil_udp_gc_thread ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 

__attribute__((used)) static void
FUNC5(void *v, wait_result_t w)
{
#pragma unused(v, w)

	FUNC0(cfil_udp_gc_thread == FUNC2());
	FUNC4(FUNC2(), "CFIL_UPD_GC");

	// Kick off gc shortly
	FUNC1(false);
	FUNC3((thread_continue_t) cfil_info_udp_expire, NULL);
	/* NOTREACHED */
}