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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/ * upl_t ;
typedef  scalar_t__ upl_size_t ;
typedef  int upl_control_flags_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int FALSE ; 
 int IO_NOCACHE ; 
 int IO_NODELOCKED ; 
 int IO_SWAP_DISPATCH ; 
 int IO_SYNC ; 
 int IO_UNIT ; 
 scalar_t__ KERN_SUCCESS ; 
 int PAGE_SIZE_64 ; 
 int SWAP_READ ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int UPL_COPYOUT_FROM ; 
 int UPL_IGNORE_VALID_PAGE_CHECK ; 
 int UPL_IOSYNC ; 
 int UPL_PAGING_ENCRYPTED ; 
 int UPL_SET_INTERNAL ; 
 int UPL_SET_LITE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSFMK ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,unsigned int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int*) ; 

int
FUNC10(vnode_t vp, uint64_t offset, uint64_t start, int npages, int flags, void *upl_iodone)
{
	int error = 0;
	uint64_t io_size = npages * PAGE_SIZE_64;
#if 1
	kern_return_t	kr = KERN_SUCCESS;
	upl_t		upl = NULL;
	unsigned int	count = 0;
	upl_control_flags_t upl_create_flags = 0;
	int		upl_control_flags = 0;
	upl_size_t	upl_size = 0;

	upl_create_flags = UPL_SET_INTERNAL | UPL_SET_LITE;

	if (upl_iodone == NULL)
	        upl_control_flags = UPL_IOSYNC;

#if ENCRYPTED_SWAP
	upl_control_flags |= UPL_PAGING_ENCRYPTED;
#endif

	if ((flags & SWAP_READ) == FALSE) {
		upl_create_flags |= UPL_COPYOUT_FROM;
	}
 
	upl_size = io_size;
	kr = FUNC6( kernel_map,
				start,
				&upl_size,
				&upl,
				NULL,
				&count,
				&upl_create_flags,
				VM_KERN_MEMORY_OSFMK);

	if (kr != KERN_SUCCESS || (upl_size != io_size)) {
		FUNC0("vm_map_create_upl failed with %d\n", kr);
	}

	if (flags & SWAP_READ) {
		FUNC8(vp,
			      upl,
			      0,
			      offset,
			      io_size,
			      upl_control_flags | UPL_IGNORE_VALID_PAGE_CHECK,
			      &error);
		if (error) {
#if DEBUG
			printf("vm_swapfile_io: vnode_pagein failed with %d (vp: %p, offset: 0x%llx, size:%llu)\n", error, vp, offset, io_size);
#else /* DEBUG */
			FUNC1("vm_swapfile_io: vnode_pagein failed with %d.\n", error);
#endif /* DEBUG */
		}
	
	} else {
	        FUNC2(upl, upl_iodone);

		FUNC9(vp,
			      upl,
			      0,
			      offset,
			      io_size,
			      upl_control_flags,
			      &error);
		if (error) {
#if DEBUG
			printf("vm_swapfile_io: vnode_pageout failed with %d (vp: %p, offset: 0x%llx, size:%llu)\n", error, vp, offset, io_size);
#else /* DEBUG */
			FUNC1("vm_swapfile_io: vnode_pageout failed with %d.\n", error);
#endif /* DEBUG */
		}
	}
	return error;

#else /* 1 */
	vfs_context_t ctx;
	ctx = vfs_context_kernel();
		
	error = vn_rdwr((flags & SWAP_READ) ? UIO_READ : UIO_WRITE, vp, (caddr_t)start, io_size, offset,
		UIO_SYSSPACE, IO_SYNC | IO_NODELOCKED | IO_UNIT | IO_NOCACHE | IO_SWAP_DISPATCH, vfs_context_ucred(ctx), (int *) 0, vfs_context_proc(ctx));

	if (error) {
		printf("vn_rdwr: Swap I/O failed with %d\n", error);
	}
	return error;
#endif /* 1 */
}