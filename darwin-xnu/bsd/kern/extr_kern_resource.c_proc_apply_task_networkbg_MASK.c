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
typedef  void* proc_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 void* PROC_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void
FUNC5(void * bsd_info, thread_t thread)
{
	FUNC0(bsd_info != PROC_NULL);

	pid_t pid = FUNC3((proc_t)bsd_info);

	proc_t p = FUNC2(pid);

	if (p != PROC_NULL) {
		FUNC0(p == (proc_t)bsd_info);

		FUNC1(p, thread);
		FUNC4(p);
	}
}