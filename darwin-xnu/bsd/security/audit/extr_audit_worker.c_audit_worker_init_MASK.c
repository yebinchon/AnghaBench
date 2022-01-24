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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ THREAD_NULL ; 
 scalar_t__ audit_thread ; 
 scalar_t__ audit_worker ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(void)
{

	FUNC0();
	FUNC1((thread_continue_t)audit_worker, NULL,
	    &audit_thread);
	if (audit_thread == THREAD_NULL)
		FUNC2("audit_worker_init: Couldn't create audit_worker thread");
}