#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* affinity_space_t ;
typedef  TYPE_3__* affinity_set_t ;
struct TYPE_11__ {TYPE_2__* aset_space; } ;
struct TYPE_10__ {int /*<<< orphan*/  aspc_lock; } ;
struct TYPE_9__ {TYPE_3__* affinity_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(thread_t thread)
{
	affinity_set_t		aset = thread->affinity_set;
	affinity_space_t	aspc;

	FUNC0("thread_affinity_terminate(%p)\n", thread);

	aspc = aset->aset_space;
	FUNC3(&aspc->aspc_lock);
	if (FUNC2(aset, thread)) {
		FUNC1(aset);
	}
	FUNC4(&aspc->aspc_lock);
}