#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  memory_object_copy_strategy_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int boolean_t ;
struct TYPE_8__ {int can_persist; void* pager_ready; int /*<<< orphan*/  copy_strategy; int /*<<< orphan*/  internal; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
#define  MEMORY_OBJECT_COPY_DELAY 129 
#define  MEMORY_OBJECT_COPY_NONE 128 
 void* TRUE ; 
 int /*<<< orphan*/  VM_OBJECT_EVENT_PAGER_READY ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_MEMORY_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC5(
	vm_object_t	object,
	boolean_t	may_cache,
	memory_object_copy_strategy_t copy_strategy)
{
	boolean_t	object_became_ready;

        FUNC0(XPR_MEMORY_OBJECT,
	    "m_o_set_attr_com, object 0x%X flg %x strat %d\n",
	    object, (may_cache&1), copy_strategy, 0, 0);

	if (object == VM_OBJECT_NULL)
		return(KERN_INVALID_ARGUMENT);

	/*
	 *	Verify the attributes of importance
	 */

	switch(copy_strategy) {
		case MEMORY_OBJECT_COPY_NONE:
		case MEMORY_OBJECT_COPY_DELAY:
			break;
		default:
			return(KERN_INVALID_ARGUMENT);
	}

	if (may_cache)
		may_cache = TRUE;

	FUNC2(object);

	/*
	 *	Copy the attributes
	 */
	FUNC1(!object->internal);
	object_became_ready = !object->pager_ready;
	object->copy_strategy = copy_strategy;
	object->can_persist = may_cache;

	/*
	 *	Wake up anyone waiting for the ready attribute
	 *	to become asserted.
	 */

	if (object_became_ready) {
		object->pager_ready = TRUE;
		FUNC4(object, VM_OBJECT_EVENT_PAGER_READY);
	}

	FUNC3(object);

	return(KERN_SUCCESS);
}