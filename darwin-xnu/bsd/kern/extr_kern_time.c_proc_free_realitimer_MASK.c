#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * thread_call_t ;
typedef  TYPE_2__* proc_t ;
struct TYPE_6__ {int /*<<< orphan*/  it_interval; } ;
struct TYPE_7__ {scalar_t__ p_refcount; scalar_t__ p_ractive; int /*<<< orphan*/ * p_rcall; TYPE_1__ p_realtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(proc_t p)
{
	FUNC2(p);

	FUNC0(p->p_rcall != NULL);
	FUNC0(p->p_refcount == 0);

	FUNC6(&p->p_realtimer.it_interval);

	if (FUNC4(p->p_rcall)) {
		FUNC0(p->p_ractive > 0);
		p->p_ractive--;
	}

	while (p->p_ractive > 0) {
		FUNC3(p);

		FUNC1(1);

		FUNC2(p);
	}

	thread_call_t call = p->p_rcall;
	p->p_rcall = NULL;

	FUNC3(p);

	FUNC5(call);
}