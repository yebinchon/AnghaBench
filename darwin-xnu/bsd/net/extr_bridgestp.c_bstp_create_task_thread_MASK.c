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
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  lck_grp_attr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  bstp_lock_attr ; 
 int /*<<< orphan*/  bstp_lock_grp ; 
 int /*<<< orphan*/  bstp_task_attr ; 
 int /*<<< orphan*/  bstp_task_grp ; 
 int /*<<< orphan*/  bstp_task_mtx ; 
 int /*<<< orphan*/  bstp_task_thread ; 
 scalar_t__ bstp_task_thread_func ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	kern_return_t error;
	
	lck_grp_attr_t *lck_grp_attr = NULL;

	lck_grp_attr = FUNC4();
	bstp_task_grp = FUNC3("bstp_task", lck_grp_attr);
	bstp_task_attr = FUNC1();
#if BRIDGE_DEBUG
	lck_attr_setdebug(bstp_task_attr);
#endif
	FUNC6(bstp_task_mtx, bstp_lock_grp, bstp_lock_attr);
	FUNC5(lck_grp_attr);

	error = FUNC0((thread_continue_t)bstp_task_thread_func, NULL, &bstp_task_thread);
}