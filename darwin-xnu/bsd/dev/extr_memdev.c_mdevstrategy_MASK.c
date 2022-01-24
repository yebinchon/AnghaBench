#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct buf {int dummy; } ;
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int addr64_t ;
struct TYPE_2__ {int mdFlags; int mdSecsize; int mdSize; int mdBase; } ;

/* Variables and functions */
 int B_READ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (struct buf*) ; 
 int FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (struct buf*) ; 
 scalar_t__ FUNC7 (struct buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buf*) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int mdInited ; 
 int mdPhys ; 
 TYPE_1__* mdev ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC17(struct buf *bp) {
	unsigned int left, lop, csize;
	vm_offset_t vaddr, blkoff;
	int devid;
	addr64_t paddr, fvaddr;
	ppnum_t pp;

	devid = FUNC14(FUNC5(bp));							/* Get minor device number */

	if ((mdev[devid].mdFlags & mdInited) == 0) {		/* Have we actually been defined yet? */
	        FUNC9(bp, ENXIO);
		FUNC2(bp);
		return;
	}

	FUNC10(bp, FUNC4(bp));						/* Set byte count */
	
	blkoff = FUNC3(bp) * mdev[devid].mdSecsize;		/* Get offset into file */

/*
 *	Note that reading past end is an error, but reading at end is an EOF.  For these
 *	we just return with resid == count.
 */

	if (blkoff >= (mdev[devid].mdSize << 12)) {			/* Are they trying to read/write at/after end? */
		if(blkoff != (mdev[devid].mdSize << 12)) {		/* Are we trying to read after EOF? */
		        FUNC9(bp, EINVAL);						/* Yeah, this is an error */
		}
		FUNC2(bp);								/* Return */
		return;
	}

	if ((blkoff + FUNC4(bp)) > (mdev[devid].mdSize << 12)) {		/* Will this read go past end? */
		FUNC8(bp, ((mdev[devid].mdSize << 12) - blkoff));	/* Yes, trim to max */
	}
	/*
	 * make sure the buffer's data area is
	 * accessible
	 */
	if (FUNC7(bp, (caddr_t *)&vaddr))
	        FUNC15("ramstrategy: buf_map failed\n");

	fvaddr = (mdev[devid].mdBase << 12) + blkoff;		/* Point to offset into ram disk */
	
	if (FUNC6(bp) & B_READ) {					/* Is this a read? */
		if(!(mdev[devid].mdFlags & mdPhys)) {			/* Physical mapped disk? */
			FUNC0((void *)((uintptr_t)fvaddr),
				(void *)vaddr, (size_t)FUNC4(bp));	/* This is virtual, just get the data */
		}
		else {
			left = FUNC4(bp);						/* Init the amount left to copy */
			while(left) {								/* Go until it is all copied */
				
				lop = FUNC13((4096 - (vaddr & 4095)), (4096 - (fvaddr & 4095)));	/* Get smallest amount left on sink and source */
				csize = FUNC13(lop, left);					/* Don't move more than we need to */
				
				pp = FUNC16(kernel_pmap, (addr64_t)((uintptr_t)vaddr));	/* Get the sink physical address */
				if(!pp) {								/* Not found, what gives? */
					FUNC15("mdevstrategy: sink address %016llX not mapped\n", (addr64_t)((uintptr_t)vaddr));
				}
				paddr = (addr64_t)(((addr64_t)pp << 12) | (addr64_t)(vaddr & 4095));	/* Get actual address */
				FUNC1(fvaddr, paddr, csize);		/* Copy this on in */
				FUNC12(paddr >> 12);			/* Make sure we know that it is modified */
				
				left = left - csize;					/* Calculate what is left */
				vaddr = vaddr + csize;					/* Move to next sink address */
				fvaddr = fvaddr + csize;				/* Bump to next physical address */
			}
		}
	}
	else {												/* This is a write */
		if(!(mdev[devid].mdFlags & mdPhys)) {			/* Physical mapped disk? */
			FUNC0((void *)vaddr, (void *)((uintptr_t)fvaddr),
				(size_t)FUNC4(bp));		/* This is virtual, just put the data */
		}
		else {
			left = FUNC4(bp);						/* Init the amount left to copy */
			while(left) {								/* Go until it is all copied */
				
				lop = FUNC13((4096 - (vaddr & 4095)), (4096 - (fvaddr & 4095)));	/* Get smallest amount left on sink and source */
				csize = FUNC13(lop, left);					/* Don't move more than we need to */
				
				pp = FUNC16(kernel_pmap, (addr64_t)((uintptr_t)vaddr));	/* Get the source physical address */
				if(!pp) {								/* Not found, what gives? */
					FUNC15("mdevstrategy: source address %016llX not mapped\n", (addr64_t)((uintptr_t)vaddr));
				}
				paddr = (addr64_t)(((addr64_t)pp << 12) | (addr64_t)(vaddr & 4095));	/* Get actual address */
			
				FUNC1(paddr, fvaddr, csize);		/* Move this on out */
				
				left = left - csize;					/* Calculate what is left */
				vaddr = vaddr + csize;					/* Move to next sink address */
				fvaddr = fvaddr + csize;				/* Bump to next physical address */
			}
		}
	}
	/*
	 * buf_unmap takes care of all the cases
	 * it will unmap the buffer from kernel
	 * virtual space if that was the state
	 * when we mapped it.
	 */
	FUNC11(bp);

	FUNC10(bp, 0);									/* Nothing more to do */	
	FUNC2(bp);									/* Say we've finished */
}