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
struct bufattr {int dummy; } ;
typedef  TYPE_1__* buf_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {int b_tag; int b_flags; int b_lflags; size_t b_whichq; uintptr_t b_datap; int /*<<< orphan*/  b_attr; scalar_t__ b_validend; scalar_t__ b_validoff; scalar_t__ b_dirtyend; scalar_t__ b_dirtyoff; scalar_t__ b_bcount; scalar_t__ b_resid; scalar_t__ b_error; int /*<<< orphan*/ * b_iodone; scalar_t__ b_lblkno; scalar_t__ b_blkno; int /*<<< orphan*/  b_dev; scalar_t__ b_redundancy_flags; void* b_owner; void* b_fsprivate; void* b_upl; scalar_t__ b_bufsize; scalar_t__ b_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int BL_BUSY ; 
 int BL_WANTDEALLOC ; 
 size_t BQ_EMPTY ; 
 size_t BQ_LAUNDRY ; 
 int B_AGE ; 
 int B_ASYNC ; 
 int B_DELWRI ; 
 int B_FUA ; 
 int B_HDRALLOC ; 
 int B_LOCKED ; 
 int B_META ; 
 int B_NOCACHE ; 
 int B_ZALLOC ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  NODEV ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  TR_BRELSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  buf_busycount ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  buf_mtxp ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * bufqueues ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 void* FUNC13 () ; 
 int /*<<< orphan*/  invalhash ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int
FUNC20(buf_t bp, boolean_t discard)
{
	/* Remove from the queue */
	FUNC8(bp);

#ifdef JOE_DEBUG
	bp->b_owner = current_thread();
	bp->b_tag   = 2;
#endif
	/*
	 * If buffer was a delayed write, start the IO by queuing
	 * it on the LAUNDRY queue, and return 1
	 */
	if (FUNC2(bp->b_flags, B_DELWRI)) {
		if (discard) {
			FUNC3(bp->b_lflags, BL_WANTDEALLOC);
		}

		FUNC6(bp);

		FUNC15(buf_mtxp);

		FUNC19(&bufqueues[BQ_LAUNDRY]);
		/*
		 * and give it a chance to run
		 */
		(void)FUNC17(THREAD_CONTINUE_NULL);

		FUNC14(buf_mtxp);

		return (1);
	}
#ifdef JOE_DEBUG
	bp->b_owner = current_thread();
	bp->b_tag   = 8;
#endif
	/*
	 * Buffer is no longer on any free list... we own it
	 */
	FUNC3(bp->b_lflags, BL_BUSY);
	buf_busycount++;
	
	FUNC9(bp);

	/*
	 * disassociate us from our vnode, if we had one...
	 */
	if (bp->b_vp)
		FUNC7(bp);

	FUNC15(buf_mtxp);

	FUNC0(bp);

	if (FUNC2(bp->b_flags, B_META))
		FUNC10(bp);

	FUNC18(TR_BRELSE, FUNC16(bp->b_vp, bp->b_bufsize), bp->b_lblkno);

	FUNC11(bp);
	
	/* If discarding, just move to the empty queue */
	if (discard) {
		FUNC14(buf_mtxp);
		FUNC1(bp->b_flags, (B_META | B_ZALLOC | B_DELWRI | B_LOCKED | B_AGE | B_ASYNC | B_NOCACHE | B_FUA));
		bp->b_whichq = BQ_EMPTY;
		FUNC4(bp, &invalhash);
		FUNC5(bp, &bufqueues[BQ_EMPTY], BQ_EMPTY);
		FUNC1(bp->b_lflags, BL_BUSY);
		buf_busycount--;
	} else {
		/* Not discarding: clean up and prepare for reuse */
		bp->b_bufsize = 0;
		bp->b_datap = (uintptr_t)NULL;
		bp->b_upl = (void *)NULL;
		bp->b_fsprivate = (void *)NULL;
		/*
		 * preserve the state of whether this buffer
		 * was allocated on the fly or not...
		 * the only other flag that should be set at
		 * this point is BL_BUSY...
		 */
#ifdef JOE_DEBUG
		bp->b_owner = current_thread();
		bp->b_tag   = 3;
#endif
		bp->b_lflags = BL_BUSY;
		bp->b_flags = (bp->b_flags & B_HDRALLOC);
		bp->b_redundancy_flags = 0;
		bp->b_dev = NODEV;
		bp->b_blkno = bp->b_lblkno = 0;
		bp->b_iodone = NULL;
		bp->b_error = 0;
		bp->b_resid = 0;
		bp->b_bcount = 0;
		bp->b_dirtyoff = bp->b_dirtyend = 0;
		bp->b_validoff = bp->b_validend = 0;
		FUNC12(&bp->b_attr, sizeof(struct bufattr));

		FUNC14(buf_mtxp);
	}
	return (0);
}