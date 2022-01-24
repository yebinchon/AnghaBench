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
struct TYPE_4__ {int /*<<< orphan*/  tqueue; } ;
typedef  TYPE_1__ tqueue_st ;
typedef  scalar_t__ lwpq_t ;
typedef  int /*<<< orphan*/  lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 

void FUNC4(lwpq_t thequeue)
{
	lwp_cntrl *thethread;
	tqueue_st *tq = (tqueue_st*)thequeue;

	tq = FUNC3(thequeue);
	if(!tq) return;

	do {
		thethread = FUNC1(&tq->tqueue);
	} while(thethread);
	FUNC0();

	FUNC2(tq);
	return;
}