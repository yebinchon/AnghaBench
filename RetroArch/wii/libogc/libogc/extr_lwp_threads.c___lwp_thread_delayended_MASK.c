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
typedef  int /*<<< orphan*/  lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

void FUNC4(void *arg)
{
	lwp_cntrl *thethread = (lwp_cntrl*)arg;
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_delayended(%p)\n",thethread);
#endif
	if(!thethread) return;

	FUNC0();
	FUNC2(thethread);
	FUNC1();
}