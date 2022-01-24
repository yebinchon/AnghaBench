#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ vm_object_size_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int MEMORY_OBJECT_DATA_FLUSH ; 
 int MEMORY_OBJECT_DATA_NO_CHANGE ; 
 int MEMORY_OBJECT_IO_SYNC ; 
 int /*<<< orphan*/  MEMORY_OBJECT_RETURN_ALL ; 
 int /*<<< orphan*/  MEMORY_OBJECT_RETURN_NONE ; 
 int /*<<< orphan*/  VM_PROT_NO_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  XPR_VM_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

boolean_t
FUNC6(
	vm_object_t		object,
	vm_object_offset_t	offset,
	vm_object_size_t	size,
	boolean_t		should_flush,
	boolean_t		should_return,
	boolean_t		should_iosync)
{
	boolean_t	rv;
	int             flags;

        FUNC0(XPR_VM_OBJECT,
            "vm_o_sync, object 0x%X, offset 0x%X size 0x%x flush %d rtn %d\n",
            object, offset, size, should_flush, should_return);

	/*
	 * Lock the object, and acquire a paging reference to
	 * prevent the memory_object and control ports from
	 * being destroyed.
	 */
	FUNC1(object);
	FUNC2(object);

	if (should_flush) {
	        flags = MEMORY_OBJECT_DATA_FLUSH;
		/*
		 * This flush is from an msync(), not a truncate(), so the
		 * contents of the file are not affected.
		 * MEMORY_OBECT_DATA_NO_CHANGE lets vm_object_update() know
		 * that the data is not changed and that there's no need to
		 * push the old contents to a copy object.
		 */
		flags |= MEMORY_OBJECT_DATA_NO_CHANGE;
	} else
	        flags = 0;

	if (should_iosync)
	        flags |= MEMORY_OBJECT_IO_SYNC;

	rv = FUNC5(object, offset, (vm_object_size_t)size, NULL, NULL,
		(should_return) ?
			MEMORY_OBJECT_RETURN_ALL :
			MEMORY_OBJECT_RETURN_NONE,
		flags,
		VM_PROT_NO_CHANGE);


	FUNC3(object);
	FUNC4(object);
	return rv;
}