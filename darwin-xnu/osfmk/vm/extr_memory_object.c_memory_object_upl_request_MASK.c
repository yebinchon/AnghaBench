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
typedef  scalar_t__ vm_object_t ;
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_size_t ;
typedef  int /*<<< orphan*/  upl_page_info_array_t ;
typedef  int /*<<< orphan*/  upl_control_flags_t ;
typedef  int /*<<< orphan*/  memory_object_offset_t ;
typedef  int /*<<< orphan*/  memory_object_control_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_TERMINATED ; 
 scalar_t__ VM_OBJECT_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int) ; 

kern_return_t
FUNC2(
	memory_object_control_t	control,
	memory_object_offset_t	offset,
	upl_size_t		size,
	upl_t			*upl_ptr,
	upl_page_info_array_t	user_page_list,
	unsigned int		*page_list_count,
	int			cntrl_flags,
	int		        tag)
{
	vm_object_t		object;

	object = FUNC0(control);
	if (object == VM_OBJECT_NULL)
		return (KERN_TERMINATED);

	return FUNC1(object,
				     offset,
				     size,
				     upl_ptr,
				     user_page_list,
				     page_list_count,
				     (upl_control_flags_t)(unsigned int) cntrl_flags,
				     tag);
}