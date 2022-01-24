#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  memory_object_size_t ;
typedef  int /*<<< orphan*/  memory_object_return_t ;
typedef  int /*<<< orphan*/  memory_object_offset_t ;
typedef  int /*<<< orphan*/  memory_object_control_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_10__ {scalar_t__ paging_offset; scalar_t__ copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MEMORY_OBJECT_DATA_FLUSH ; 
 int MEMORY_OBJECT_DATA_FLUSH_ALL ; 
 int /*<<< orphan*/  MEMORY_OBJECT_RETURN_NONE ; 
 int /*<<< orphan*/  REAP_DATA_FLUSH ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int VM_PROT_ALL ; 
 int VM_PROT_NO_CHANGE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int,int) ; 

kern_return_t
FUNC8(
	memory_object_control_t		control,
	memory_object_offset_t		offset,
	memory_object_size_t		size,
	memory_object_offset_t	*	resid_offset,
	int			*	io_errno,
	memory_object_return_t		should_return,
	int				flags,
	vm_prot_t			prot)
{
	vm_object_t	object;

        /*
	 *	Check for bogus arguments.
	 */
	object = FUNC0(control);
	if (object == VM_OBJECT_NULL)
		return (KERN_INVALID_ARGUMENT);

	if ((prot & ~VM_PROT_ALL) != 0 && prot != VM_PROT_NO_CHANGE)
		return (KERN_INVALID_ARGUMENT);

	size = FUNC1(size);

	/*
	 *	Lock the object, and acquire a paging reference to
	 *	prevent the memory_object reference from being released.
	 */
	FUNC2(object);
	FUNC3(object);

	if (flags & MEMORY_OBJECT_DATA_FLUSH_ALL) {
		if ((should_return != MEMORY_OBJECT_RETURN_NONE) || offset || object->copy) {
			flags &= ~MEMORY_OBJECT_DATA_FLUSH_ALL;
			flags |= MEMORY_OBJECT_DATA_FLUSH;
		}
	}
	offset -= object->paging_offset;

	if (flags & MEMORY_OBJECT_DATA_FLUSH_ALL)
		FUNC5(object, REAP_DATA_FLUSH);
	else
		(void)FUNC7(object, offset, size, resid_offset,
				       io_errno, should_return, flags, prot);

	FUNC4(object);
	FUNC6(object);

	return (KERN_SUCCESS);
}