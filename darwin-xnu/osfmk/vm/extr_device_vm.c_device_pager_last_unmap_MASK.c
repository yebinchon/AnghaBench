#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* device_pager_t ;
typedef  void* boolean_t ;
struct TYPE_5__ {scalar_t__ ref_count; void* is_mapped; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

kern_return_t
FUNC5(
	memory_object_t	mem_obj)
{
	device_pager_t	device_object;
	boolean_t	drop_ref;

	device_object = FUNC3(mem_obj);

	FUNC2(device_object);
	FUNC0(device_object->ref_count > 0);
	if (device_object->is_mapped) {
		device_object->is_mapped = FALSE;
		drop_ref = TRUE;
	} else {
		drop_ref = FALSE;
	}
	FUNC4(device_object);

	if (drop_ref) {
		FUNC1(mem_obj);
	}

	return KERN_SUCCESS;
}