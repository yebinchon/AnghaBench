#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  Lock_owner; int /*<<< orphan*/  Lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  scan_object_collision ; 
 TYPE_1__* vm_pageout_scan_wants_object ; 

void
FUNC3(vm_object_t object)
{
        if (object == vm_pageout_scan_wants_object) {
	        scan_object_collision++;
	        FUNC2(2);
	}
        FUNC1(&object->Lock);
#if DEVELOPMENT || DEBUG
	object->Lock_owner = current_thread();
#endif
}