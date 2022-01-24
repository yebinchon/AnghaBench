#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_2__* affinity_space_t ;
typedef  TYPE_3__* affinity_set_t ;
struct TYPE_27__ {TYPE_2__* affinity_space; } ;
struct TYPE_26__ {int /*<<< orphan*/  aset_tag; } ;
struct TYPE_25__ {int /*<<< orphan*/  aspc_lock; } ;
struct TYPE_24__ {TYPE_3__* affinity_set; int /*<<< orphan*/  active; TYPE_7__* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 int /*<<< orphan*/  THREAD_AFFINITY_TAG_NULL ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_3__* FUNC2 () ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

kern_return_t
FUNC17(thread_t thread, uint32_t tag)
{
	affinity_set_t		aset;
	affinity_set_t		empty_aset = NULL;
	affinity_space_t	aspc;
	affinity_space_t	new_aspc = NULL;

	FUNC0("thread_affinity_set(%p,%u)\n", thread, tag);

	FUNC12(thread->task);
	aspc = thread->task->affinity_space;
	if (aspc == NULL) {
		FUNC13(thread->task);
		new_aspc = FUNC7();
		if (new_aspc == NULL)
			return KERN_RESOURCE_SHORTAGE;
		FUNC12(thread->task);
		if (thread->task->affinity_space == NULL) {
			thread->task->affinity_space = new_aspc;
			new_aspc = NULL;
		}
		aspc = thread->task->affinity_space;
	}
	FUNC13(thread->task);
	if (new_aspc)
		FUNC8(new_aspc);

	FUNC15(thread);
	if (!thread->active) {
		/* Beaten to lock and the thread is dead */
		FUNC16(thread);
		return KERN_TERMINATED;
	}

	FUNC10(&aspc->aspc_lock);
	aset = thread->affinity_set;
	if (aset != NULL) {
		/*
		 * Remove thread from current affinity set
		 */
		FUNC0("thread_affinity_set(%p,%u) removing from aset %p\n",
			thread, tag, aset);
		empty_aset = FUNC6(aset, thread);
	}

	if (tag != THREAD_AFFINITY_TAG_NULL) {
		aset = FUNC3(aspc, tag);
		if (aset != NULL) {
			/*
			 * Add thread to existing affinity set
			 */
			FUNC0("thread_affinity_set(%p,%u) found aset %p\n",
				thread, tag, aset);
		} else {
			/*
			 * Use the new affinity set, add this thread
			 * and place it in a suitable processor set.
			 */
			if (empty_aset != NULL) {
				aset = empty_aset;
				empty_aset = NULL;
			} else {
				aset = FUNC2();
				if (aset == NULL) {
					FUNC11(&aspc->aspc_lock);
					FUNC16(thread);
					return KERN_RESOURCE_SHORTAGE;
				}
			}
			FUNC0("thread_affinity_set(%p,%u) (re-)using aset %p\n",
				thread, tag, aset);
			aset->aset_tag = tag;
			FUNC5(aspc, aset);
		}
		FUNC1(aset, thread);
	}

	FUNC11(&aspc->aspc_lock);
	FUNC16(thread);

	/*
	 * If we wound up not using an empty aset we created,
	 * free it here.
	 */
	if (empty_aset != NULL)
		FUNC4(empty_aset);

	if (thread == FUNC9())
	        FUNC14(THREAD_CONTINUE_NULL);

	return KERN_SUCCESS;
}