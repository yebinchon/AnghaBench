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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  int /*<<< orphan*/ * vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_FILE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(u_char *buf, uint32_t buflen, vm_map_copy_t *addr)
{
	kern_return_t kr;
	vm_offset_t kmem_buf;
	vm_size_t tbuflen;

	*addr = NULL;
	if (buf == NULL || buflen == 0)
		return;

	tbuflen = FUNC5(buflen,
				    FUNC4(ipc_kernel_map));
	kr = FUNC2(ipc_kernel_map, &kmem_buf, tbuflen, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_FILE);
	if (kr != 0) {
		FUNC1("nfs_gss_mach_alloc_buffer: vm_allocate failed\n");
		return;
	}

	kr = FUNC8(ipc_kernel_map,
			 FUNC6(kmem_buf,
					   FUNC4(ipc_kernel_map)),
			 FUNC5(kmem_buf + tbuflen,
					   FUNC4(ipc_kernel_map)),
		VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_FILE, FALSE);
	if (kr != 0) {
		FUNC1("nfs_gss_mach_alloc_buffer: vm_map_wire failed\n");
		return;
	}
	
	FUNC0(buf, (void *) kmem_buf, buflen);
	// Shouldn't need to bzero below since vm_allocate returns zeroed pages
	// bzero(kmem_buf + buflen, tbuflen - buflen);
	
	kr = FUNC7(ipc_kernel_map,
			   FUNC6(kmem_buf,
					     FUNC4(ipc_kernel_map)),
			   FUNC5(kmem_buf + tbuflen,
					     FUNC4(ipc_kernel_map)),
			   FALSE);
	if (kr != 0) {
		FUNC1("nfs_gss_mach_alloc_buffer: vm_map_unwire failed\n");
		return;
	}

	kr = FUNC3(ipc_kernel_map, (vm_map_address_t) kmem_buf,
		(vm_map_size_t) buflen, TRUE, addr);
	if (kr != 0) {
		FUNC1("nfs_gss_mach_alloc_buffer: vm_map_copyin failed\n");
		return;
	}
}