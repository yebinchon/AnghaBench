#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {size_t cur_prio; int /*<<< orphan*/ * ready; int /*<<< orphan*/  priomap; } ;
typedef  TYPE_1__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * _lwp_thr_ready ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 

void FUNC2(lwp_cntrl *thethread,u32 prio)
{
	thethread->cur_prio = prio;
	thethread->ready = &_lwp_thr_ready[prio];
	FUNC0(&thethread->priomap,prio);
#ifdef _LWPTHREADS_DEBUG
	kprintf("__lwp_thread_setpriority(%p,%d,%p)\n",thethread,prio,thethread->ready);
#endif
}