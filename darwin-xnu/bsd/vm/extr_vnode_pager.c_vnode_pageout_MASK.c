#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_object_offset_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/ * upl_t ;
typedef  int upl_size_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  int upl_offset_t ;
struct vnode {scalar_t__ v_tag; TYPE_2__* v_mount; } ;
typedef  int pager_return_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
struct TYPE_4__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_3__ {int vfc_vfsflags; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_VM ; 
 int EINVAL ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PAGER_ERROR ; 
 int PAGER_SUCCESS ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  UPL_ABORT_FREE_ON_EMPTY ; 
 int /*<<< orphan*/  UPL_COMMIT_FREE_ON_EMPTY ; 
 int UPL_MSYNC ; 
 int UPL_NOCOMMIT ; 
 int UPL_RET_ONLY_DIRTY ; 
 int UPL_UBC_MSYNC ; 
 int UPL_UBC_PAGEOUT ; 
 int UPL_VNODE_PAGER ; 
 int VFC_VFSVNOP_PAGEOUTV2 ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_FILE ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ VT_NFS ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vnode*,scalar_t__,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 

pager_return_t
FUNC15(struct vnode *vp,
	upl_t			upl,
	upl_offset_t		upl_offset,
	vm_object_offset_t	f_offset,
	upl_size_t		size,
	int			flags,
	int			*errorp)
{
	int		result = PAGER_SUCCESS;
	int		error = 0;
	int		error_ret = 0;
	daddr64_t blkno;
	int isize;
	int pg_index;
	int base_index;
	upl_offset_t offset;
	upl_page_info_t *pl;
	vfs_context_t ctx = FUNC14();	/* pager context */

	isize = (int)size;

	if (isize <= 0) {
	        result    = PAGER_ERROR;
		error_ret = EINVAL;
		goto out;
	}

	if (FUNC2(vp) == 0) {
		result    = PAGER_ERROR;
		error_ret = EINVAL;

		if (upl && !(flags & UPL_NOCOMMIT))
		        FUNC9(upl, upl_offset, size, UPL_ABORT_FREE_ON_EMPTY);
		goto out;
	}
	if ( !(flags & UPL_VNODE_PAGER)) {
		/*
		 * This is a pageout from the default pager,
		 * just go ahead and call vnop_pageout since
		 * it has already sorted out the dirty ranges
		 */
		FUNC0(KDEBUG_TRACE,
			(FUNC1(DBG_MACH_VM, 1)) | DBG_FUNC_START, 
			size, 1, 0, 0, 0);

		if ( (error_ret = FUNC3(vp, upl, upl_offset, (off_t)f_offset,
					       (size_t)size, flags, ctx)) )
			result = PAGER_ERROR;

		FUNC0(KDEBUG_TRACE,
			(FUNC1(DBG_MACH_VM, 1)) | DBG_FUNC_END, 
			size, 1, 0, 0, 0);

		goto out;
	}
	if (upl == NULL) {
		int			request_flags;

		if (vp->v_mount->mnt_vtable->vfc_vfsflags & VFC_VFSVNOP_PAGEOUTV2) {
			/*
			 * filesystem has requested the new form of VNOP_PAGEOUT for file
			 * backed objects... we will not grab the UPL befofe calling VNOP_PAGEOUT...
			 * it is the fileystem's responsibility to grab the range we're denoting
			 * via 'f_offset' and 'size' into a UPL... this allows the filesystem to first
			 * take any locks it needs, before effectively locking the pages into a UPL...
			 */
			FUNC0(KDEBUG_TRACE, 
				(FUNC1(DBG_MACH_VM, 1)) | DBG_FUNC_START, 
				size, (int)f_offset, 0, 0, 0);

			if ( (error_ret = FUNC3(vp, NULL, upl_offset, (off_t)f_offset,
						       size, flags, ctx)) ) {
				result = PAGER_ERROR;
			}
			FUNC0(KDEBUG_TRACE,
				(FUNC1(DBG_MACH_VM, 1)) | DBG_FUNC_END, 
				size, 0, 0, 0, 0);

			goto out;
		}
		if (flags & UPL_MSYNC)
			request_flags = UPL_UBC_MSYNC | UPL_RET_ONLY_DIRTY;
		else
			request_flags = UPL_UBC_PAGEOUT | UPL_RET_ONLY_DIRTY;
		
	        if (FUNC6(vp, f_offset, size, &upl, &pl, request_flags, VM_KERN_MEMORY_FILE) != KERN_SUCCESS) {
			result    = PAGER_ERROR;
			error_ret = EINVAL;
			goto out;
		}
		upl_offset = 0;
	} else 
		pl = FUNC11(upl);

	/*
	 * Ignore any non-present pages at the end of the
	 * UPL so that we aren't looking at a upl that 
	 * may already have been freed by the preceeding
	 * aborts/completions.
	 */
	base_index = upl_offset / PAGE_SIZE;

	for (pg_index = (upl_offset + isize) / PAGE_SIZE; pg_index > base_index;) {
	        if (FUNC13(pl, --pg_index))
		        break;
		if (pg_index == base_index) {
		        /*
			 * no pages were returned, so release
			 * our hold on the upl and leave
			 */
		        if ( !(flags & UPL_NOCOMMIT))
			        FUNC9(upl, upl_offset, isize, UPL_ABORT_FREE_ON_EMPTY);

			goto out;
		}
	}
	isize = ((pg_index + 1) - base_index) * PAGE_SIZE;

	/*
	 * we come here for pageouts to 'real' files and
	 * for msyncs...  the upl may not contain any
	 * dirty pages.. it's our responsibility to sort
	 * through it and find the 'runs' of dirty pages
	 * to call VNOP_PAGEOUT on...
	 */

	if (FUNC7(vp) == 0) {
	        /*
		 * if the file has been effectively deleted, then
		 * we need to go through the UPL and invalidate any
		 * buffer headers we might have that reference any
		 * of it's pages
		 */
		for (offset = upl_offset; isize; isize -= PAGE_SIZE, offset += PAGE_SIZE) {
#if NFSCLIENT
			if (vp->v_tag == VT_NFS)
				/* check with nfs if page is OK to drop */
				error = nfs_buf_page_inval(vp, (off_t)f_offset);
			else
#endif
			{
			        blkno = FUNC8(vp, (off_t)f_offset);
			        error = FUNC4(vp, blkno, 0);
			}
			if (error) {
			        if ( !(flags & UPL_NOCOMMIT))
				        FUNC9(upl, offset, PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
				if (error_ret == 0)
				        error_ret = error;
				result = PAGER_ERROR;

			} else if ( !(flags & UPL_NOCOMMIT)) {
			        FUNC10(upl, offset, PAGE_SIZE, UPL_COMMIT_FREE_ON_EMPTY);
			}
			f_offset += PAGE_SIZE;
		}
		goto out;
	}

	offset = upl_offset;
	pg_index = base_index;

	while (isize) {
		int  xsize;
		int  num_of_pages;

		if ( !FUNC13(pl, pg_index)) {
		        /*
			 * we asked for RET_ONLY_DIRTY, so it's possible
			 * to get back empty slots in the UPL
			 * just skip over them
			 */
		        f_offset += PAGE_SIZE;
			offset   += PAGE_SIZE;
			isize    -= PAGE_SIZE;
			pg_index++;

			continue;
		}
		if ( !FUNC12(pl, pg_index)) {
			/*
			 * if the page is not dirty and reached here it is
			 * marked precious or it is due to invalidation in
			 * memory_object_lock request as part of truncation
			 * We also get here from vm_object_terminate()
			 * So all you need to do in these
			 * cases is to invalidate incore buffer if it is there
			 * Note we must not sleep here if the buffer is busy - that is
			 * a lock inversion which causes deadlock.
			 */
#if NFSCLIENT
			if (vp->v_tag == VT_NFS)
				/* check with nfs if page is OK to drop */
				error = nfs_buf_page_inval(vp, (off_t)f_offset);
			else
#endif
			{
			        blkno = FUNC8(vp, (off_t)f_offset);
			        error = FUNC4(vp, blkno, 0);
			}
			if (error) {
			        if ( !(flags & UPL_NOCOMMIT))
				        FUNC9(upl, offset, PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
				if (error_ret == 0)
				        error_ret = error;
				result = PAGER_ERROR;

			} else if ( !(flags & UPL_NOCOMMIT)) {
			        FUNC10(upl, offset, PAGE_SIZE, UPL_COMMIT_FREE_ON_EMPTY);
			}
		        f_offset += PAGE_SIZE;
			offset   += PAGE_SIZE;
			isize    -= PAGE_SIZE;
			pg_index++;

			continue;
		}
		num_of_pages = 1;
		xsize = isize - PAGE_SIZE;

		while (xsize) {
			if ( !FUNC12(pl, pg_index + num_of_pages))
				break;
			num_of_pages++;
			xsize -= PAGE_SIZE;
		}
		xsize = num_of_pages * PAGE_SIZE;

		FUNC0(KDEBUG_TRACE,
			(FUNC1(DBG_MACH_VM, 1)) | DBG_FUNC_START, 
			xsize, (int)f_offset, 0, 0, 0);

		if ( (error = FUNC3(vp, upl, offset, (off_t)f_offset,
					   xsize, flags, ctx)) ) {
		        if (error_ret == 0)
		                error_ret = error;
			result = PAGER_ERROR;
		}
		FUNC0(KDEBUG_TRACE,
			(FUNC1(DBG_MACH_VM, 1)) | DBG_FUNC_END, 
			xsize, 0, 0, 0, 0);

	        f_offset += xsize;
		offset   += xsize;
		isize    -= xsize;
		pg_index += num_of_pages;
	}
out:
	if (errorp)
		*errorp = error_ret;

	return (result);
}