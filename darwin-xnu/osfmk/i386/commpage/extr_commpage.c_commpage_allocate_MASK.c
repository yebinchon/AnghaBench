#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_size_t ;
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
struct TYPE_9__ {int /*<<< orphan*/  vmkf_map_jit; } ;
typedef  TYPE_1__ vm_map_kernel_flags_t ;
typedef  TYPE_2__* vm_map_entry_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
struct TYPE_11__ {int /*<<< orphan*/  copy_strategy; } ;
struct TYPE_10__ {scalar_t__ is_sub_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MEMORY_OBJECT_COPY_NONE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_7__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_FLAGS_FIXED ; 
 int /*<<< orphan*/  VM_INHERIT_NONE ; 
 int /*<<< orphan*/  VM_INHERIT_SHARE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSFMK ; 
 TYPE_1__ VM_MAP_KERNEL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t*,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static  void*
FUNC12( 
	vm_map_t	submap,			// commpage32_map or commpage_map64
	size_t		area_used,		// _COMM_PAGE32_AREA_USED or _COMM_PAGE64_AREA_USED
	vm_prot_t	uperm)
{
	vm_offset_t	kernel_addr = 0;	// address of commpage in kernel map
	vm_offset_t	zero = 0;
	vm_size_t	size = area_used;	// size actually populated
	vm_map_entry_t	entry;
	ipc_port_t	handle;
	kern_return_t	kr;
	vm_map_kernel_flags_t vmk_flags;

	if (submap == NULL)
		FUNC5("commpage submap is null");

	kr = FUNC7(kernel_map,
			   &kernel_addr,
			   area_used,
			   0,
			   VM_FLAGS_ANYWHERE,
			   VM_MAP_KERNEL_FLAGS_NONE,
			   VM_KERN_MEMORY_OSFMK,
			   NULL,
			   0,
			   FALSE,
			   VM_PROT_ALL,
			   VM_PROT_ALL,
			   VM_INHERIT_NONE);
	if (kr != KERN_SUCCESS)
		FUNC5("cannot allocate commpage %d", kr);

	if ((kr = FUNC10(kernel_map,
			      kernel_addr,
			      kernel_addr+area_used,
			      VM_PROT_DEFAULT, VM_KERN_MEMORY_OSFMK,
			      FALSE)))
		FUNC5("cannot wire commpage: %d", kr);

	/* 
	 * Now that the object is created and wired into the kernel map, mark it so that no delay
	 * copy-on-write will ever be performed on it as a result of mapping it into user-space.
	 * If such a delayed copy ever occurred, we could remove the kernel's wired mapping - and
	 * that would be a real disaster.
	 *
	 * JMM - What we really need is a way to create it like this in the first place.
	 */
	if (!(kr = FUNC8( kernel_map, FUNC9(kernel_addr, FUNC1(kernel_map)), &entry) || entry->is_sub_map))
		FUNC5("cannot find commpage entry %d", kr);
	FUNC0(entry)->copy_strategy = MEMORY_OBJECT_COPY_NONE;

	if ((kr = FUNC4( kernel_map,		// target map
				    &size,		// size 
				    kernel_addr,	// offset (address in kernel map)
				    uperm,	// protections as specified
				    &handle,		// this is the object handle we get
				    NULL )))		// parent_entry (what is this?)
		FUNC5("cannot make entry for commpage %d", kr);

	vmk_flags = VM_MAP_KERNEL_FLAGS_NONE;
	if (uperm == (VM_PROT_READ | VM_PROT_EXECUTE)) {
		/*
		 * Mark this unsigned executable mapping as "jit" to avoid
		 * code-signing violations when attempting to execute unsigned
		 * code.
		 */
		vmk_flags.vmkf_map_jit = TRUE;
	}

	kr = FUNC6(
		submap,			// target map (shared submap)
		&zero,			// address (map into 1st page in submap)
		area_used,		// size
		0,			// mask
		VM_FLAGS_FIXED,		// flags (it must be 1st page in submap)
		vmk_flags,
		VM_KERN_MEMORY_NONE,
		handle,			// port is the memory entry we just made
		0,			// offset (map 1st page in memory entry)
		FALSE,			// copy
		uperm,			// cur_protection (R-only in user map)
		uperm,			// max_protection
		VM_INHERIT_SHARE); 	// inheritance
	if (kr != KERN_SUCCESS)
		FUNC5("cannot map commpage %d", kr);

	FUNC3(handle);
	/* Make the kernel mapping non-executable. This cannot be done
	 * at the time of map entry creation as mach_make_memory_entry
	 * cannot handle disjoint permissions at this time.
	 */
	kr = FUNC11(kernel_map, kernel_addr, area_used, FALSE, VM_PROT_READ | VM_PROT_WRITE);
	FUNC2 (kr == KERN_SUCCESS);

	return (void*)(intptr_t)kernel_addr;                     // return address in kernel map
}