#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_12__ ;

/* Type definitions */
typedef  TYPE_3__* vnode_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  void* upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct bufhashhdr {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int kern_return_t ;
typedef  int daddr64_t ;
typedef  TYPE_4__* buf_t ;
struct TYPE_29__ {int b_tag; int b_bcount; int b_bufsize; int b_lblkno; int b_blkno; int b_validend; int b_dirtyend; int /*<<< orphan*/ * b_stackgetblk; int /*<<< orphan*/  b_flags; int /*<<< orphan*/  b_datap; int /*<<< orphan*/  b_dirtyoff; int /*<<< orphan*/  b_validoff; void* b_upl; TYPE_3__* b_vp; int /*<<< orphan*/  b_owner; int /*<<< orphan*/  b_lflags; } ;
struct TYPE_28__ {TYPE_2__* v_mount; } ;
struct TYPE_26__ {int /*<<< orphan*/  f_fstypename; } ;
struct TYPE_27__ {TYPE_1__ mnt_vfsstat; } ;
struct TYPE_25__ {int /*<<< orphan*/  bufs_miss; int /*<<< orphan*/  bufs_vmhits; int /*<<< orphan*/  bufs_incore; int /*<<< orphan*/  bufs_busyincore; } ;

/* Variables and functions */
#define  BLK_META 130 
 int BLK_ONLYVALID ; 
#define  BLK_READ 129 
#define  BLK_WRITE 128 
 int BL_BUSY ; 
 int BL_WANTED ; 
 int BQ_EMPTY ; 
 struct bufhashhdr* FUNC0 (TYPE_3__*,int) ; 
 int B_CACHE ; 
 int B_DELWRI ; 
 int B_DONE ; 
 int B_INVAL ; 
 int B_META ; 
 int B_WASDIRTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DBG_FSRW ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_NONE ; 
 int DBG_FUNC_START ; 
 int EWOULDBLOCK ; 
 int FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,...) ; 
 int KERN_SUCCESS ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int PAGE_SIZE ; 
 int PCATCH ; 
 int PDROP ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int UPL_PRECIOUS ; 
 int UPL_WILL_MODIFY ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_FILE ; 
 int VNODE_READ ; 
 int VNODE_WRITE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int,int*,size_t*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct bufhashhdr*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  buf_busycount ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  buf_mtxp ; 
 TYPE_12__ bufstats ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_4__* FUNC17 (int,int,int*) ; 
 TYPE_4__* FUNC18 (TYPE_3__*,int,struct bufhashhdr*) ; 
 struct bufhashhdr invalhash ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_4__*,int /*<<< orphan*/ ,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int) ; 
 int FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int,void**,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int FUNC26 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (void*,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (TYPE_3__*) ; 

buf_t
FUNC31(vnode_t vp, daddr64_t blkno, int size, int slpflag, int slptimeo, int operation)
{
	buf_t bp;
	int   err;
	upl_t upl;
	upl_page_info_t *pl;
	kern_return_t kret;
	int ret_only_valid;
	struct timespec ts;
	int upl_flags;
	struct	bufhashhdr *dp;

	FUNC4((FUNC2(DBG_FSRW, 386)) | DBG_FUNC_START,
		     (uintptr_t)(blkno * PAGE_SIZE), size, operation, 0, 0);

	ret_only_valid = operation & BLK_ONLYVALID;
	operation &= ~BLK_ONLYVALID;
	dp = FUNC0(vp, blkno);
start:
	FUNC19(buf_mtxp);

	if ((bp = FUNC18(vp, blkno, dp))) {
		/*
		 * Found in the Buffer Cache
		 */
		if (FUNC3(bp->b_lflags, BL_BUSY)) {
			/*
			 * but is busy
			 */
			switch (operation) {
			case BLK_READ:
			case BLK_WRITE:
			case BLK_META:
				FUNC7(bp->b_lflags, BL_WANTED);
				bufstats.bufs_busyincore++;

				/*
				 * don't retake the mutex after being awakened...
				 * the time out is in msecs 
				 */
				ts.tv_sec = (slptimeo/1000);
				ts.tv_nsec = (slptimeo % 1000) * 10  * NSEC_PER_USEC * 1000;

				FUNC4((FUNC2(DBG_FSRW, 396)) | DBG_FUNC_NONE,
					     (uintptr_t)blkno, size, operation, 0, 0);

				err = FUNC21(bp, buf_mtxp, slpflag | PDROP | (PRIBIO + 1), "buf_getblk", &ts);

				/*
				 * Callers who call with PCATCH or timeout are
				 * willing to deal with the NULL pointer
				 */
				if (err && ((slpflag & PCATCH) || ((err == EWOULDBLOCK) && slptimeo)))
					return (NULL);
				goto start;
				/*NOTREACHED*/

			default:
			        /*
				 * unknown operation requested
				 */
				FUNC22("getblk: paging or unknown operation for incore busy buffer - %x\n", operation);
				/*NOTREACHED*/
				break;
			}		
		} else {
			int clear_bdone;

			/*
			 * buffer in core and not busy
			 */
			FUNC7(bp->b_lflags, BL_BUSY);
			FUNC7(bp->b_flags, B_CACHE);
			buf_busycount++;

			FUNC13(bp);
			bufstats.bufs_incore++;
			
			FUNC20(buf_mtxp);
#ifdef JOE_DEBUG
			bp->b_owner = current_thread();
			bp->b_tag   = 1;
#endif
			if ( (bp->b_upl) )
			        FUNC22("buffer has UPL, but not marked BUSY: %p", bp);

			clear_bdone = FALSE;
			if (!ret_only_valid) {
				/*
				 * If the number bytes that are valid is going
				 * to increase (even if we end up not doing a
				 * reallocation through allocbuf) we have to read
				 * the new size first.
				 *
				 * This is required in cases where we doing a read
				 * modify write of a already valid data on disk but
				 * in cases where the data on disk beyond (blkno + b_bcount)
				 * is invalid, we may end up doing extra I/O.
				 */
				if (operation == BLK_META && bp->b_bcount < size) {
					/*
					 * Since we are going to read in the whole size first
					 * we first have to ensure that any pending delayed write
					 * is flushed to disk first.
					 */
					if (FUNC3(bp->b_flags, B_DELWRI)) {
						FUNC1(bp->b_flags, B_CACHE);
						FUNC15(bp);
						goto start;
					}
					/*
					 * clear B_DONE before returning from
					 * this function so that the caller can
					 * can issue a read for the new size.
					 */
					clear_bdone = TRUE;
				}

				if (bp->b_bufsize != size)
					FUNC10(bp, size);
			}

			upl_flags = 0;
			switch (operation) {
			case BLK_WRITE:
				/*
				 * "write" operation:  let the UPL subsystem
				 * know that we intend to modify the buffer
				 * cache pages we're gathering.
				 */
				upl_flags |= UPL_WILL_MODIFY;
			case BLK_READ:
				upl_flags |= UPL_PRECIOUS;
			        if (FUNC8(bp->b_vp) && bp->b_bufsize) {
					kret = FUNC25(vp,
							      FUNC24(vp, bp->b_lblkno), 
							      bp->b_bufsize, 
							      &upl, 
							      &pl,
							      upl_flags,
							      VM_KERN_MEMORY_FILE);
					if (kret != KERN_SUCCESS)
					        FUNC22("Failed to create UPL");

					bp->b_upl = upl;

					if (FUNC29(pl, 0)) {
					        if (FUNC27(pl, 0))
						        FUNC7(bp->b_flags, B_WASDIRTY);
						else
						        FUNC1(bp->b_flags, B_WASDIRTY);
					} else 
					        FUNC1(bp->b_flags, (B_DONE | B_CACHE | B_WASDIRTY | B_DELWRI));

					kret = FUNC26(upl, (vm_offset_t*)&(bp->b_datap));

					if (kret != KERN_SUCCESS)
					        FUNC22("getblk: ubc_upl_map() failed with (%d)", kret);
				}
				break;

			case BLK_META:
				/*
				 * VM is not involved in IO for the meta data
				 * buffer already has valid data 
				 */
				break;

			default:
				FUNC22("getblk: paging or unknown operation for incore buffer- %d\n", operation);
				/*NOTREACHED*/
				break;
			}

			if (clear_bdone)
				FUNC1(bp->b_flags, B_DONE);
		}
	} else { /* not incore() */
		int queue = BQ_EMPTY; /* Start with no preference */
		
		if (ret_only_valid) {
			FUNC20(buf_mtxp);
			return (NULL);
		}
		if ((FUNC30(vp) == 0) || (FUNC8(vp) == 0) /*|| (vnode_issystem(vp) == 1)*/)
			operation = BLK_META;

		if ((bp = FUNC17(slpflag, slptimeo, &queue)) == NULL)
			goto start;

		/*
		 * getnewbuf may block for a number of different reasons...
		 * if it does, it's then possible for someone else to
		 * create a buffer for the same block and insert it into
		 * the hash... if we see it incore at this point we dump
		 * the buffer we were working on and start over
		 */
		if (FUNC18(vp, blkno, dp)) {
			FUNC7(bp->b_flags, B_INVAL);
			FUNC12(bp, &invalhash);

			FUNC20(buf_mtxp);

			FUNC14(bp);
			goto start;
		}
		/*
		 * NOTE: YOU CAN NOT BLOCK UNTIL binshash() HAS BEEN
		 *       CALLED!  BE CAREFUL.
		 */

		/*
		 * mark the buffer as B_META if indicated
		 * so that when buffer is released it will goto META queue
		 */
		if (operation == BLK_META)
		        FUNC7(bp->b_flags, B_META);

		bp->b_blkno = bp->b_lblkno = blkno;
		bp->b_vp = vp;

		/*
		 * Insert in the hash so that incore() can find it 
		 */
		FUNC12(bp, FUNC0(vp, blkno)); 

		FUNC11(vp, bp);

		FUNC20(buf_mtxp);

		FUNC10(bp, size);

		upl_flags = 0;
		switch (operation) {
		case BLK_META:
			/*
			 * buffer data is invalid...
			 *
			 * I don't want to have to retake buf_mtxp,
			 * so the miss and vmhits counters are done
			 * with Atomic updates... all other counters
			 * in bufstats are protected with either
			 * buf_mtxp or iobuffer_mtxp
			 */
		        FUNC5(1, &bufstats.bufs_miss);
			break;

		case BLK_WRITE:
			/*
			 * "write" operation:  let the UPL subsystem know
			 * that we intend to modify the buffer cache pages
			 * we're gathering.
			 */
			upl_flags |= UPL_WILL_MODIFY;
		case BLK_READ:
		  {     off_t	f_offset;
			size_t 	contig_bytes;
			int	bmap_flags;

#if DEVELOPMENT || DEBUG
			/*
			 * Apple implemented file systems use UBC excludively; they should
			 * not call in here."
			 */
			const char* excldfs[] = {"hfs", "afpfs", "smbfs", "acfs",
						 "exfat", "msdos", "webdav", NULL};

			for (int i = 0; excldfs[i] != NULL; i++) {
				if (vp->v_mount &&
				    !strcmp(vp->v_mount->mnt_vfsstat.f_fstypename,
						excldfs[i])) {
					panic("%s %s calls buf_getblk",
						excldfs[i],
						operation == BLK_READ ? "BLK_READ" : "BLK_WRITE");
				}
			}
#endif

			if ( (bp->b_upl) )
				FUNC22("bp already has UPL: %p",bp);

			f_offset = FUNC24(vp, blkno);

			upl_flags |= UPL_PRECIOUS;
			kret = FUNC25(vp,
					      f_offset,
					      bp->b_bufsize, 
					      &upl,
					      &pl,
					      upl_flags,
					      VM_KERN_MEMORY_FILE);

			if (kret != KERN_SUCCESS)
				FUNC22("Failed to create UPL");
#if  UPL_DEBUG
			upl_ubc_alias_set(upl, (uintptr_t) bp, (uintptr_t) 4);
#endif /* UPL_DEBUG */
			bp->b_upl = upl;

			if (FUNC29(pl, 0)) {

			        if (operation == BLK_READ)
				        bmap_flags = VNODE_READ;
				else
				        bmap_flags = VNODE_WRITE;

				FUNC7(bp->b_flags, B_CACHE | B_DONE);

			        FUNC5(1, &bufstats.bufs_vmhits);

				bp->b_validoff = 0;
				bp->b_dirtyoff = 0;

				if (FUNC27(pl, 0)) {
					/* page is dirty */
				        FUNC7(bp->b_flags, B_WASDIRTY);

					bp->b_validend = bp->b_bcount;
					bp->b_dirtyend = bp->b_bcount;
				} else {
					/* page is clean */
					bp->b_validend = bp->b_bcount;
					bp->b_dirtyend = 0;
				}
				/*
				 * try to recreate the physical block number associated with
				 * this buffer...
				 */
				if (FUNC9(vp, f_offset, bp->b_bcount, &bp->b_blkno, &contig_bytes, NULL, bmap_flags, NULL))
				        FUNC22("getblk: VNOP_BLOCKMAP failed");
				/*
				 * if the extent represented by this buffer
				 * is not completely physically contiguous on
				 * disk, than we can't cache the physical mapping
				 * in the buffer header
				 */
				if ((long)contig_bytes < bp->b_bcount)
				        bp->b_blkno = bp->b_lblkno;
			} else {
			        FUNC5(1, &bufstats.bufs_miss);
			}
			kret = FUNC26(upl, (vm_offset_t *)&(bp->b_datap));

			if (kret != KERN_SUCCESS)
			        FUNC22("getblk: ubc_upl_map() failed with (%d)", kret);
			break;
		  } // end BLK_READ
		default:
			FUNC22("getblk: paging or unknown operation - %x", operation);
			/*NOTREACHED*/
			break;
		} // end switch
	} //end buf_t !incore

	FUNC4((FUNC2(DBG_FSRW, 386)) | DBG_FUNC_END,
		     bp, bp->b_datap, bp->b_flags, 3, 0);

#ifdef JOE_DEBUG
	(void) OSBacktrace(&bp->b_stackgetblk[0], 6);
#endif
	return (bp);
}