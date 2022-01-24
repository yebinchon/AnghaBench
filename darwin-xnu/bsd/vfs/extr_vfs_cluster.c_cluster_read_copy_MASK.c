#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int vm_offset_t ;
typedef  int upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  int u_int32_t ;
typedef  int u_int ;
struct uio {int uio_offset; } ;
struct clios {int io_error; int /*<<< orphan*/  io_mtxp; scalar_t__ io_wanted; scalar_t__ io_issued; scalar_t__ io_completed; } ;
struct cl_readahead {int cl_lastr; int cl_maxra; int /*<<< orphan*/  cl_lockr; scalar_t__ cl_ralen; } ;
struct cl_extent {int b_addr; int e_addr; } ;
typedef  int off_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  buf_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int CL_ASYNC ; 
 int CL_ENCRYPTED ; 
 int CL_NOCACHE ; 
 int CL_PASSIVE ; 
 int CL_READ ; 
 int /*<<< orphan*/  DBG_FSRW ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EAGAIN ; 
 scalar_t__ FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int IOPOL_DEFAULT ; 
 int IO_ENCRYPTED ; 
 int IO_NOCACHE ; 
 int IO_PASSIVE ; 
 int IO_RAOFF ; 
 int IO_RETURN_ON_THROTTLE ; 
 int IO_SKIP_ENCRYPTION ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 int PAGE_MASK_64 ; 
 int PAGE_SIZE ; 
 int PAGE_SIZE_64 ; 
 int THROTTLE_LEVEL_TIER2 ; 
 int THROTTLE_LEVEL_TIER3 ; 
 int THROTTLE_MAX_IOSIZE ; 
 scalar_t__ THROTTLE_NOW ; 
 scalar_t__ TRUE ; 
 int UPL_ABORT_DUMP_PAGES ; 
 int UPL_ABORT_FREE_ON_EMPTY ; 
 int UPL_COMMIT_CLEAR_DIRTY ; 
 int UPL_COMMIT_FREE_ON_EMPTY ; 
 int UPL_COMMIT_INACTIVATE ; 
 int UPL_COMMIT_SPECULATE ; 
 int UPL_FILE_IO ; 
 int UPL_SET_LITE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_FILE ; 
 int /*<<< orphan*/  cl_mtx_attr ; 
 int /*<<< orphan*/  cl_mtx_grp ; 
 int FUNC3 (TYPE_1__*,struct uio*,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct uio*,int,int,int*) ; 
 struct cl_readahead* FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int,int,int,int,int,int /*<<< orphan*/ ,struct clios*,int (*) (buf_t,void*),void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct clios*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct cl_extent*,int,struct cl_readahead*,int (*) (buf_t,void*),void*,int) ; 
 int FUNC12 (TYPE_1__*,int,int,int,int (*) (buf_t,void*),void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int,int,int*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int,int,int,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC25(vnode_t vp, struct uio *uio, u_int32_t io_req_size, off_t filesize, int flags, int (*callback)(buf_t, void *), void *callback_arg)
{
	upl_page_info_t *pl;
	upl_t            upl;
	vm_offset_t      upl_offset;
	u_int32_t	 upl_size;
	off_t 	         upl_f_offset;
	int		 start_offset;
	int	         start_pg;
	int		 last_pg;
	int              uio_last = 0;
	int              pages_in_upl;
	off_t            max_size;
	off_t            last_ioread_offset;
	off_t            last_request_offset;
	kern_return_t    kret;
	int              error  = 0;
	int              retval = 0;
	u_int32_t        size_of_prefetch;
	u_int32_t        xsize;
	u_int32_t        io_size;
	u_int32_t        max_rd_size;
	u_int32_t        max_io_size;
	u_int32_t        max_prefetch;
	u_int            rd_ahead_enabled = 1;
	u_int            prefetch_enabled = 1;
	struct cl_readahead *	rap;
	struct clios		iostate;
	struct cl_extent	extent;
	int              bflag;
	int		 take_reference = 1;
	int		 policy = IOPOL_DEFAULT;
	boolean_t	 iolock_inited = FALSE;

	FUNC1((FUNC0(DBG_FSRW, 32)) | DBG_FUNC_START,
		     (int)uio->uio_offset, io_req_size, (int)filesize, flags, 0);
	
	if (flags & IO_ENCRYPTED) {
		FUNC18 ("encrypted blocks will hit UBC!");
	}
			 
	policy = FUNC19(NULL);

	if (policy == THROTTLE_LEVEL_TIER3 || policy == THROTTLE_LEVEL_TIER2 || (flags & IO_NOCACHE))
		take_reference = 0;

	if (flags & IO_PASSIVE)
		bflag = CL_PASSIVE;
	else
		bflag = 0;

	if (flags & IO_NOCACHE)
		bflag |= CL_NOCACHE;

	if (flags & IO_SKIP_ENCRYPTION)
		bflag |= CL_ENCRYPTED;

	max_io_size = FUNC10(vp->v_mount, CL_READ);
	max_prefetch = FUNC2(vp, max_io_size, FUNC14(vp->v_mount));
	max_rd_size = max_prefetch;

	last_request_offset = uio->uio_offset + io_req_size;

	if (last_request_offset > filesize)
	        last_request_offset = filesize;

	if ((flags & (IO_RAOFF|IO_NOCACHE)) || ((last_request_offset & ~PAGE_MASK_64) == (uio->uio_offset & ~PAGE_MASK_64))) {
	        rd_ahead_enabled = 0;
		rap = NULL;
	} else {
	        if (FUNC9(vp)) {
			/*
			 * we're in the throttle window, at the very least
			 * we want to limit the size of the I/O we're about
			 * to issue
			 */
		        rd_ahead_enabled = 0;
			prefetch_enabled = 0;

			max_rd_size = THROTTLE_MAX_IOSIZE;
		}
	        if ((rap = FUNC5(vp)) == NULL)
		        rd_ahead_enabled = 0;
		else {
			extent.b_addr = uio->uio_offset / PAGE_SIZE_64;
			extent.e_addr = (last_request_offset - 1) / PAGE_SIZE_64;
		}
	}
	if (rap != NULL && rap->cl_ralen && (rap->cl_lastr == extent.b_addr || (rap->cl_lastr + 1) == extent.b_addr)) {
	        /*
		 * determine if we already have a read-ahead in the pipe courtesy of the
		 * last read systemcall that was issued...
		 * if so, pick up it's extent to determine where we should start
		 * with respect to any read-ahead that might be necessary to 
		 * garner all the data needed to complete this read systemcall
		 */
	        last_ioread_offset = (rap->cl_maxra * PAGE_SIZE_64) + PAGE_SIZE_64;

		if (last_ioread_offset < uio->uio_offset)
		        last_ioread_offset = (off_t)0;
		else if (last_ioread_offset > last_request_offset)
		        last_ioread_offset = last_request_offset;
	} else
	        last_ioread_offset = (off_t)0;

	while (io_req_size && uio->uio_offset < filesize && retval == 0) {

		max_size = filesize - uio->uio_offset;

		if ((off_t)(io_req_size) < max_size)
		        io_size = io_req_size;
		else
		        io_size = max_size;

		if (!(flags & IO_NOCACHE)) {

		        while (io_size) {
			        u_int32_t io_resid;
				u_int32_t io_requested;

				/*
				 * if we keep finding the pages we need already in the cache, then
				 * don't bother to call cluster_read_prefetch since it costs CPU cycles
				 * to determine that we have all the pages we need... once we miss in
				 * the cache and have issued an I/O, than we'll assume that we're likely
				 * to continue to miss in the cache and it's to our advantage to try and prefetch
				 */
				if (last_request_offset && last_ioread_offset && (size_of_prefetch = (last_request_offset - last_ioread_offset))) {
				        if ((last_ioread_offset - uio->uio_offset) <= max_rd_size && prefetch_enabled) {
					        /*
						 * we've already issued I/O for this request and
						 * there's still work to do and
						 * our prefetch stream is running dry, so issue a
						 * pre-fetch I/O... the I/O latency will overlap
						 * with the copying of the data
						 */
					        if (size_of_prefetch > max_rd_size)
						        size_of_prefetch = max_rd_size;

					        size_of_prefetch = FUNC12(vp, last_ioread_offset, size_of_prefetch, filesize, callback, callback_arg, bflag);

						last_ioread_offset += (off_t)(size_of_prefetch * PAGE_SIZE);
				
						if (last_ioread_offset > last_request_offset)
						        last_ioread_offset = last_request_offset;
					}
				}
				/*
				 * limit the size of the copy we're about to do so that 
				 * we can notice that our I/O pipe is running dry and 
				 * get the next I/O issued before it does go dry
				 */
				if (last_ioread_offset && io_size > (max_io_size / 4))
				        io_resid = (max_io_size / 4);
				else
				        io_resid = io_size;

				io_requested = io_resid;

			        retval = FUNC3(vp, uio, (int *)&io_resid, 0, take_reference);

				xsize = io_requested - io_resid;

				io_size -= xsize;
				io_req_size -= xsize;

				if (retval || io_resid)
				        /*
					 * if we run into a real error or
					 * a page that is not in the cache
					 * we need to leave streaming mode
					 */
				        break;
				
				if (rd_ahead_enabled && (io_size == 0 || last_ioread_offset == last_request_offset)) {
				        /*
					 * we're already finished the I/O for this read request
					 * let's see if we should do a read-ahead
					 */
				        FUNC11(vp, &extent, filesize, rap, callback, callback_arg, bflag);
				}
			}
			if (retval)
			        break;
			if (io_size == 0) {
				if (rap != NULL) {
				        if (extent.e_addr < rap->cl_lastr)
					        rap->cl_maxra = 0;
					rap->cl_lastr = extent.e_addr;
				}
			        break;
			}
			/*
			 * recompute max_size since cluster_copy_ubc_data_internal
			 * may have advanced uio->uio_offset
			 */
			max_size = filesize - uio->uio_offset;
		}

		iostate.io_completed = 0;
		iostate.io_issued = 0;
		iostate.io_error = 0;
		iostate.io_wanted = 0;

		if ( (flags & IO_RETURN_ON_THROTTLE) ) {
			if (FUNC9(vp) == THROTTLE_NOW) {
				if ( !FUNC7(vp, uio->uio_offset)) {
					/*
					 * we're in the throttle window and at least 1 I/O
					 * has already been issued by a throttleable thread
					 * in this window, so return with EAGAIN to indicate
					 * to the FS issuing the cluster_read call that it
					 * should now throttle after dropping any locks
					 */
					FUNC20(vp->v_mount);

					retval = EAGAIN;
					break;
				}
			}
		}

		/*
		 * compute the size of the upl needed to encompass
		 * the requested read... limit each call to cluster_io
		 * to the maximum UPL size... cluster_io will clip if
		 * this exceeds the maximum io_size for the device,
		 * make sure to account for 
		 * a starting offset that's not page aligned
		 */
		start_offset = (int)(uio->uio_offset & PAGE_MASK_64);
		upl_f_offset = uio->uio_offset - (off_t)start_offset;

	        if (io_size > max_rd_size)
		        io_size = max_rd_size;

		upl_size = (start_offset + io_size + (PAGE_SIZE - 1)) & ~PAGE_MASK;

		if (flags & IO_NOCACHE) {
		        if (upl_size > max_io_size)
			        upl_size = max_io_size;
		} else {
		        if (upl_size > max_io_size / 4) {
			        upl_size = max_io_size / 4;
				upl_size &= ~PAGE_MASK;
				
				if (upl_size == 0)
					upl_size = PAGE_SIZE;
			}
		}
		pages_in_upl = upl_size / PAGE_SIZE;

		FUNC1((FUNC0(DBG_FSRW, 33)) | DBG_FUNC_START,
			     upl, (int)upl_f_offset, upl_size, start_offset, 0);

		kret = FUNC21(vp,
				      upl_f_offset,
				      upl_size,
				      &upl,
				      &pl,
				      UPL_FILE_IO | UPL_SET_LITE,
				      VM_KERN_MEMORY_FILE);
		if (kret != KERN_SUCCESS)
			FUNC18("cluster_read_copy: failed to get pagelist");

		FUNC1((FUNC0(DBG_FSRW, 33)) | DBG_FUNC_END,
			     upl, (int)upl_f_offset, upl_size, start_offset, 0);

		/*
		 * scan from the beginning of the upl looking for the first
		 * non-valid page.... this will become the first page in
		 * the request we're going to make to 'cluster_io'... if all
		 * of the pages are valid, we won't call through to 'cluster_io'
		 */
		for (start_pg = 0; start_pg < pages_in_upl; start_pg++) {
			if (!FUNC24(pl, start_pg))
				break;
		}

		/*
		 * scan from the starting invalid page looking for a valid
		 * page before the end of the upl is reached, if we 
		 * find one, then it will be the last page of the request to
		 * 'cluster_io'
		 */
		for (last_pg = start_pg; last_pg < pages_in_upl; last_pg++) {
			if (FUNC24(pl, last_pg))
				break;
		}

		if (start_pg < last_pg) {		
		        /*
			 * we found a range of 'invalid' pages that must be filled
			 * if the last page in this range is the last page of the file
			 * we may have to clip the size of it to keep from reading past
			 * the end of the last physical block associated with the file
			 */
			if (iolock_inited == FALSE) {
				FUNC16(&iostate.io_mtxp, cl_mtx_grp, cl_mtx_attr);

				iolock_inited = TRUE;
			}
			upl_offset = start_pg * PAGE_SIZE;
			io_size    = (last_pg - start_pg) * PAGE_SIZE;

			if ((off_t)(upl_f_offset + upl_offset + io_size) > filesize)
			        io_size = filesize - (upl_f_offset + upl_offset);

			/*
			 * issue an asynchronous read to cluster_io
			 */

			error = FUNC6(vp, upl, upl_offset, upl_f_offset + upl_offset,
					   io_size, CL_READ | CL_ASYNC | bflag, (buf_t)NULL, &iostate, callback, callback_arg);

			if (rap) {
                                if (extent.e_addr < rap->cl_maxra) {
                                       /*
                                        * we've just issued a read for a block that should have been
                                        * in the cache courtesy of the read-ahead engine... something
                                        * has gone wrong with the pipeline, so reset the read-ahead
                                        * logic which will cause us to restart from scratch
                                        */
                                        rap->cl_maxra = 0;
                               }
                        }
		}
		if (error == 0) {
		        /*
			 * if the read completed successfully, or there was no I/O request
			 * issued, than copy the data into user land via 'cluster_upl_copy_data'
			 * we'll first add on any 'valid'
			 * pages that were present in the upl when we acquired it.
			 */
			u_int  val_size;

		        for (uio_last = last_pg; uio_last < pages_in_upl; uio_last++) {
			        if (!FUNC24(pl, uio_last))
				        break;
			}
			if (uio_last < pages_in_upl) {
			        /*
				 * there were some invalid pages beyond the valid pages
				 * that we didn't issue an I/O for, just release them
				 * unchanged now, so that any prefetch/readahed can
				 * include them
				 */
			        FUNC22(upl, uio_last * PAGE_SIZE,
						    (pages_in_upl - uio_last) * PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
			}

			/*
			 * compute size to transfer this round,  if io_req_size is
			 * still non-zero after this attempt, we'll loop around and
			 * set up for another I/O.
			 */
			val_size = (uio_last * PAGE_SIZE) - start_offset;
		
			if (val_size > max_size)
			        val_size = max_size;

			if (val_size > io_req_size)
			        val_size = io_req_size;

			if ((uio->uio_offset + val_size) > last_ioread_offset)
			        last_ioread_offset = uio->uio_offset + val_size;

			if ((size_of_prefetch = (last_request_offset - last_ioread_offset)) && prefetch_enabled) {

			        if ((last_ioread_offset - (uio->uio_offset + val_size)) <= upl_size) {
				        /*
					 * if there's still I/O left to do for this request, and...
					 * we're not in hard throttle mode, and...
					 * we're close to using up the previous prefetch, then issue a
					 * new pre-fetch I/O... the I/O latency will overlap
					 * with the copying of the data
					 */
				        if (size_of_prefetch > max_rd_size)
					        size_of_prefetch = max_rd_size;

					size_of_prefetch = FUNC12(vp, last_ioread_offset, size_of_prefetch, filesize, callback, callback_arg, bflag);

					last_ioread_offset += (off_t)(size_of_prefetch * PAGE_SIZE);
				
					if (last_ioread_offset > last_request_offset)
					        last_ioread_offset = last_request_offset;
				}

			} else if ((uio->uio_offset + val_size) == last_request_offset) {
			        /*
				 * this transfer will finish this request, so...
				 * let's try to read ahead if we're in 
				 * a sequential access pattern and we haven't
				 * explicitly disabled it
				 */
			        if (rd_ahead_enabled)
					FUNC11(vp, &extent, filesize, rap, callback, callback_arg, bflag);
					
				if (rap != NULL) {
				        if (extent.e_addr < rap->cl_lastr)
					        rap->cl_maxra = 0;
					rap->cl_lastr = extent.e_addr;
				}
			}
			if (iolock_inited == TRUE)
				FUNC8(&iostate, 0, "cluster_read_copy");

			if (iostate.io_error)
			        error = iostate.io_error;
			else {
			        u_int32_t io_requested;

			        io_requested = val_size;

			        retval = FUNC4(uio, upl, start_offset, (int *)&io_requested);
				
				io_req_size -= (val_size - io_requested);
			}
		} else {
			if (iolock_inited == TRUE)
				FUNC8(&iostate, 0, "cluster_read_copy");
		}
		if (start_pg < last_pg) {
		        /*
			 * compute the range of pages that we actually issued an I/O for
			 * and either commit them as valid if the I/O succeeded
			 * or abort them if the I/O failed or we're not supposed to 
			 * keep them in the cache
			 */
		        io_size = (last_pg - start_pg) * PAGE_SIZE;

			FUNC1((FUNC0(DBG_FSRW, 35)) | DBG_FUNC_START, upl, start_pg * PAGE_SIZE, io_size, error, 0);

			if (error || (flags & IO_NOCACHE))
			        FUNC22(upl, start_pg * PAGE_SIZE, io_size,
						    UPL_ABORT_DUMP_PAGES | UPL_ABORT_FREE_ON_EMPTY);
			else {
				int	commit_flags = UPL_COMMIT_CLEAR_DIRTY | UPL_COMMIT_FREE_ON_EMPTY;

				if (take_reference)
					commit_flags |= UPL_COMMIT_INACTIVATE;
				else
					commit_flags |= UPL_COMMIT_SPECULATE;

			        FUNC23(upl, start_pg * PAGE_SIZE, io_size, commit_flags);
			}
			FUNC1((FUNC0(DBG_FSRW, 35)) | DBG_FUNC_END, upl, start_pg * PAGE_SIZE, io_size, error, 0);
		}
		if ((last_pg - start_pg) < pages_in_upl) {
		        /*
			 * the set of pages that we issued an I/O for did not encompass
			 * the entire upl... so just release these without modifying
			 * their state
			 */
			if (error)
				FUNC22(upl, 0, upl_size, UPL_ABORT_FREE_ON_EMPTY);
			else {

				FUNC1((FUNC0(DBG_FSRW, 35)) | DBG_FUNC_START,
					     upl, -1, pages_in_upl - (last_pg - start_pg), 0, 0);

				/*
				 * handle any valid pages at the beginning of
				 * the upl... release these appropriately
				 */
				FUNC13(upl, 0, start_pg, take_reference);

				/*
				 * handle any valid pages immediately after the
				 * pages we issued I/O for... ... release these appropriately
				 */
				FUNC13(upl, last_pg, uio_last, take_reference);

				FUNC1((FUNC0(DBG_FSRW, 35)) | DBG_FUNC_END, upl, -1, -1, 0, 0);
			}
		}
		if (retval == 0)
		        retval = error;

		if (io_req_size) {
		        if (FUNC9(vp)) {
				/*
				 * we're in the throttle window, at the very least
				 * we want to limit the size of the I/O we're about
				 * to issue
				 */
			        rd_ahead_enabled = 0;
				prefetch_enabled = 0;
				max_rd_size = THROTTLE_MAX_IOSIZE;
			} else {
			        if (max_rd_size == THROTTLE_MAX_IOSIZE) {
				        /*
					 * coming out of throttled state
					 */
					if (policy != THROTTLE_LEVEL_TIER3 && policy != THROTTLE_LEVEL_TIER2) {
						if (rap != NULL)
							rd_ahead_enabled = 1;
						prefetch_enabled = 1;
					}
					max_rd_size = max_prefetch;
					last_ioread_offset = 0;
				}
			}
		}
	}
	if (iolock_inited == TRUE) {
		/*
		 * cluster_io returned an error after it
		 * had already issued some I/O.  we need
		 * to wait for that I/O to complete before
		 * we can destroy the iostate mutex...
		 * 'retval' already contains the early error
		 * so no need to pick it up from iostate.io_error
		 */
		FUNC8(&iostate, 0, "cluster_read_copy");

		FUNC15(&iostate.io_mtxp, cl_mtx_grp);
	}
	if (rap != NULL) {
	        FUNC1((FUNC0(DBG_FSRW, 32)) | DBG_FUNC_END,
			     (int)uio->uio_offset, io_req_size, rap->cl_lastr, retval, 0);

	        FUNC17(&rap->cl_lockr);
	} else {
	        FUNC1((FUNC0(DBG_FSRW, 32)) | DBG_FUNC_END,
			     (int)uio->uio_offset, io_req_size, 0, retval, 0);
	}

	return (retval);
}