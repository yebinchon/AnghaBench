#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
struct doc_tombstone {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  uu_rethrottle_lock; int /*<<< orphan*/ * t_tombstone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rethrottle_lock_grp ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  uthread_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

void
FUNC4(void *uthread)
{
	uthread_t uth = (uthread_t)uthread;

	if (uth->t_tombstone) {
		FUNC0(uth->t_tombstone, sizeof(struct doc_tombstone));
		uth->t_tombstone = NULL;
	}

	FUNC1(&uth->uu_rethrottle_lock, rethrottle_lock_grp);

	FUNC2(uthread);
	/* and free the uthread itself */
	FUNC3(uthread_zone, uthread);
}