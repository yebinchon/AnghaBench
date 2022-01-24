#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  lwp_cntrl ;
typedef  int /*<<< orphan*/  cond_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_1__ cond_st ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_MUTEX_NULL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC3(cond_t cond,u8 isbroadcast)
{
	lwp_cntrl *thethread;
	cond_st *thecond = FUNC0(cond);
	if(!thecond) return -1;

	do {
		thethread = FUNC2(&thecond->wait_queue);
		if(!thethread) thecond->lock = LWP_MUTEX_NULL;
	} while(isbroadcast && thethread);
	FUNC1();
	return 0;
}