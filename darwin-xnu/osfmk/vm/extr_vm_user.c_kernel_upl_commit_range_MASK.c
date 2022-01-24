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
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_size_t ;
typedef  int /*<<< orphan*/  upl_page_info_array_t ;
typedef  int /*<<< orphan*/  upl_offset_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int UPL_COMMIT_FREE_ON_EMPTY ; 
 int UPL_COMMIT_KERNEL_ONLY_FLAGS ; 
 int UPL_COMMIT_NOTIFY_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(
	upl_t 			upl,
	upl_offset_t		offset,
	upl_size_t		size,
	int			flags,
	upl_page_info_array_t   pl,
	mach_msg_type_number_t  count)
{
	boolean_t		finished = FALSE;
	kern_return_t 		kr;

	if (flags & UPL_COMMIT_FREE_ON_EMPTY)
		flags |= UPL_COMMIT_NOTIFY_EMPTY;

	if (flags & UPL_COMMIT_KERNEL_ONLY_FLAGS) {
		return KERN_INVALID_ARGUMENT;
	}

	kr = FUNC0(upl, offset, size, flags, pl, count, &finished);

	if ((flags & UPL_COMMIT_NOTIFY_EMPTY) && finished)
		FUNC1(upl);

	return kr;
}