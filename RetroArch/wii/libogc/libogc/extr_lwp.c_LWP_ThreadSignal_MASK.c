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
struct TYPE_3__ {int /*<<< orphan*/  tqueue; } ;
typedef  TYPE_1__ tqueue_st ;
typedef  int /*<<< orphan*/  lwpq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(lwpq_t thequeue)
{
	tqueue_st *tq;

	tq = FUNC2(thequeue);
	if(!tq) return;

	FUNC1(&tq->tqueue);
	FUNC0();
}