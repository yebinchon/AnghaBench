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
 int PSOCK ; 
 int PSPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fadv_list ; 
 int /*<<< orphan*/  fadv_lock ; 
 int /*<<< orphan*/  flowadv_thread_cont ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *v, wait_result_t w)
{
#pragma unused(v, w)
	FUNC1(&fadv_lock);
	(void) FUNC3(&fadv_list, &fadv_lock, (PSOCK | PSPIN),
	    "flowadv", 0, flowadv_thread_cont);
	/*
	 * msleep0() shouldn't have returned as PCATCH was not set;
	 * therefore assert in this case.
	 */
	FUNC2(&fadv_lock);
	FUNC0(0);
}