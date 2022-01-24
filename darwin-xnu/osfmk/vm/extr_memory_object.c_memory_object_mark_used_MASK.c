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
typedef  int /*<<< orphan*/ * memory_object_control_t ;

/* Variables and functions */
 scalar_t__ VM_OBJECT_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2(
        memory_object_control_t	control)
{
	vm_object_t		object;

	if (control == NULL)
		return;

	object = FUNC0(control);

	if (object != VM_OBJECT_NULL)
		FUNC1(object);
}