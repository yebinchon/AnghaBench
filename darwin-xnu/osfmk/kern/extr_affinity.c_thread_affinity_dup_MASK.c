#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  TYPE_3__* affinity_space_t ;
typedef  TYPE_4__* affinity_set_t ;
struct TYPE_17__ {TYPE_3__* aset_space; } ;
struct TYPE_16__ {int /*<<< orphan*/  aspc_lock; } ;
struct TYPE_15__ {TYPE_1__* task; TYPE_4__* affinity_set; } ;
struct TYPE_14__ {TYPE_3__* affinity_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(thread_t parent, thread_t child)
{
	affinity_set_t			aset;
	affinity_space_t		aspc;

	FUNC5(parent);
	aset = parent->affinity_set;
	FUNC0("thread_affinity_dup(%p,%p) aset %p\n", parent, child, aset);
	if (aset == NULL) {
		FUNC6(parent);
		return;
	}

	aspc = aset->aset_space;
	FUNC2(aspc == parent->task->affinity_space);
	FUNC2(aspc == child->task->affinity_space);

	FUNC3(&aspc->aspc_lock);
	FUNC1(aset, child);
	FUNC4(&aspc->aspc_lock);

	FUNC6(parent);
}