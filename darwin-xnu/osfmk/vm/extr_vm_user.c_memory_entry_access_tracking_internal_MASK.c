#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_object_t ;
typedef  TYPE_2__* vm_named_entry_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_3__* ipc_port_t ;
struct TYPE_11__ {scalar_t__ ip_kobject; } ;
struct TYPE_9__ {scalar_t__ object; } ;
struct TYPE_10__ {TYPE_1__ backing; scalar_t__ is_copy; scalar_t__ is_sub_map; } ;

/* Variables and functions */
 scalar_t__ IKOT_NAMED_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_NOT_SUPPORTED ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ VM_OBJECT_NULL ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC5(
	ipc_port_t	entry_port,
	int		*access_tracking,
	uint32_t	*access_tracking_reads,
	uint32_t	*access_tracking_writes)
{
	vm_named_entry_t	mem_entry;
	vm_object_t		object;
	kern_return_t		kr;

	if (!FUNC0(entry_port) ||
	    FUNC1(entry_port) != IKOT_NAMED_ENTRY) {
		return KERN_INVALID_ARGUMENT;
	}

	mem_entry = (vm_named_entry_t) entry_port->ip_kobject;

	FUNC2(mem_entry);

	if (mem_entry->is_sub_map ||
	    mem_entry->is_copy) {
		FUNC3(mem_entry);
		return KERN_INVALID_ARGUMENT;
	}

	object = mem_entry->backing.object;
	if (object == VM_OBJECT_NULL) {
		FUNC3(mem_entry);
		return KERN_INVALID_ARGUMENT;
	}

#if VM_OBJECT_ACCESS_TRACKING
	vm_object_access_tracking(object,
				  access_tracking,
				  access_tracking_reads,
				  access_tracking_writes);
	kr = KERN_SUCCESS;
#else /* VM_OBJECT_ACCESS_TRACKING */
	(void) access_tracking;
	(void) access_tracking_reads;
	(void) access_tracking_writes;
	kr = KERN_NOT_SUPPORTED;
#endif /* VM_OBJECT_ACCESS_TRACKING */

	FUNC3(mem_entry);

	return kr;
}