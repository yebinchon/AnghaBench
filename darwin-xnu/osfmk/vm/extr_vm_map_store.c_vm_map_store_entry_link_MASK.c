#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_kernel_flags_t ;
typedef  int /*<<< orphan*/  vm_map_entry_t ;
struct TYPE_7__ {scalar_t__ disable_vmentry_reuse; int /*<<< orphan*/  hdr; int /*<<< orphan*/  first_free; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(
	vm_map_t		map,
	vm_map_entry_t		after_where,
	vm_map_entry_t		entry,
	vm_map_kernel_flags_t	vmk_flags)
{
	vm_map_t VMEL_map;
	vm_map_entry_t VMEL_entry;
	VMEL_map = (map);
	VMEL_entry = (entry);
	
	FUNC1(&VMEL_map->hdr, after_where, VMEL_entry);
	if( VMEL_map->disable_vmentry_reuse == TRUE ) {
		FUNC0( VMEL_map, VMEL_entry);
	} else {
		FUNC2(VMEL_map, VMEL_map->first_free);
#ifdef VM_MAP_STORE_USE_RB
		if (vm_map_store_has_RB_support( &VMEL_map->hdr )) {
			update_first_free_rb(VMEL_map, entry, TRUE);
		}
#endif
	}
#if PMAP_CS
	(void) vm_map_entry_cs_associate(map, entry, vmk_flags);
#else /* PMAP_CS */
	(void) vmk_flags;
#endif /* PMAP_CS */
}