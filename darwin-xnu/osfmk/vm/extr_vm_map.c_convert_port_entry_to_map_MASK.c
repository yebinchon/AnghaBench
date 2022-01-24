#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_named_entry_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_3__* ipc_port_t ;
struct TYPE_14__ {scalar_t__ ip_kobject; } ;
struct TYPE_12__ {int /*<<< orphan*/  map; } ;
struct TYPE_13__ {int protection; TYPE_1__ backing; scalar_t__ is_sub_map; int /*<<< orphan*/  Lock; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ IKOT_NAMED_ENTRY ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_MAP_NULL ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

vm_map_t
FUNC11(
	ipc_port_t	port)
{
	vm_map_t map;
	vm_named_entry_t	named_entry;
	uint32_t	try_failed_count = 0;

	if(FUNC0(port) && (FUNC3(port) == IKOT_NAMED_ENTRY)) {
		while(TRUE) {
			FUNC4(port);
			if(FUNC2(port) && (FUNC3(port)
					       == IKOT_NAMED_ENTRY)) {
				named_entry =
					(vm_named_entry_t)port->ip_kobject;
				if (!(FUNC6(&(named_entry)->Lock))) {
                       			FUNC5(port);

					try_failed_count++;
                       			FUNC9(try_failed_count);
                       			continue;
                		}
				named_entry->ref_count++;
				FUNC7(&(named_entry)->Lock);
				FUNC5(port);
				if ((named_entry->is_sub_map) &&
				    (named_entry->protection
				     & VM_PROT_WRITE)) {
					map = named_entry->backing.map;
				} else {
					FUNC8(port);
					return VM_MAP_NULL;
				}
				FUNC10(map);
				FUNC8(port);
				break;
			}
			else
				return VM_MAP_NULL;
		}
	}
	else
		map = FUNC1(port);

	return map;
}