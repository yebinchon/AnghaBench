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
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  TYPE_2__* vm_named_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_3__* ipc_port_t ;
struct TYPE_11__ {scalar_t__ ip_kobject; } ;
struct TYPE_9__ {scalar_t__ object; } ;
struct TYPE_10__ {TYPE_1__ backing; scalar_t__ is_copy; scalar_t__ is_sub_map; } ;

/* Variables and functions */
 scalar_t__ IKOT_NAMED_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 scalar_t__ VM_OBJECT_NULL ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

kern_return_t
FUNC7(
	ipc_port_t		entry_port,
	vm_object_offset_t	offset,
	int			ops,
	ppnum_t			*phys_entry,
	int			*flags)
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

	FUNC6(object);
	FUNC3(mem_entry);

	kr = FUNC5(object, offset, ops, phys_entry, flags);

	FUNC4(object);	

	return kr;
}