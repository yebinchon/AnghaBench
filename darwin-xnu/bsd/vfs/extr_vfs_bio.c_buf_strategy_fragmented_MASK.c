#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  size_t off_t ;
typedef  int daddr64_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  TYPE_2__* buf_t ;
struct TYPE_17__ {int b_blkno; int b_lblkno; int b_bcount; int b_flags; size_t b_bufsize; size_t b_resid; scalar_t__ b_datap; } ;
struct TYPE_16__ {int /*<<< orphan*/  v_numoutput; } ;

/* Variables and functions */
 int B_READ ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int VNODE_READ ; 
 int VNODE_WRITE ; 
 int FUNC2 (TYPE_1__*,size_t,int,int*,size_t*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(vnode_t devvp, buf_t bp, off_t f_offset, size_t contig_bytes)
{
	vnode_t	vp = FUNC10(bp);
	buf_t	io_bp;			 /* For reading or writing a single block */
	int	io_direction;
	int	io_resid;
	size_t	io_contig_bytes;
        daddr64_t io_blkno;
	int	error = 0;
	int	bmap_flags;

	/*
	 * save our starting point... the bp was already mapped
	 * in buf_strategy before we got called
	 * no sense doing it again.
	 */
	io_blkno = bp->b_blkno;
	/*
	 * Make sure we redo this mapping for the next I/O
	 * i.e. this can never be a 'permanent' mapping
	 */
	bp->b_blkno = bp->b_lblkno;
	
	/*
	 * Get an io buffer to do the deblocking
	 */
	io_bp = FUNC4(devvp, 0);

	io_bp->b_lblkno = bp->b_lblkno;
	io_bp->b_datap  = bp->b_datap;
	io_resid	= bp->b_bcount;
        io_direction	= bp->b_flags & B_READ;
	io_contig_bytes = contig_bytes;
	
	if (bp->b_flags & B_READ)
	        bmap_flags = VNODE_READ;
	else
	        bmap_flags = VNODE_WRITE;

	for (;;) {
		if (io_blkno == -1)
		        /*
			 * this is unexepected, but we'll allow for it
			 */
		        FUNC11((caddr_t)io_bp->b_datap, (int)io_contig_bytes);
		else {
		        io_bp->b_bcount	 = io_contig_bytes;
			io_bp->b_bufsize = io_contig_bytes;
			io_bp->b_resid   = io_contig_bytes;
			io_bp->b_blkno   = io_blkno;

			FUNC8(io_bp, io_direction);

			/*
			 * Call the device to do the I/O and wait for it.  Make sure the appropriate party is charged for write
			 */

			if (!FUNC0(bp->b_flags, B_READ))
			        FUNC1(1, &devvp->v_numoutput);

			if ((error = FUNC3(io_bp)))
			        break;
			if ((error = (int)FUNC6(io_bp)))
			        break;
			if (io_bp->b_resid) {
			        io_resid -= (io_contig_bytes - io_bp->b_resid);
				break;
			}
		}
		if ((io_resid -= io_contig_bytes) == 0)
		        break;
		f_offset       += io_contig_bytes;
		io_bp->b_datap += io_contig_bytes;

		/*
		 * Map the current position to a physical block number
		 */
		if ((error = FUNC2(vp, f_offset, io_resid, &io_blkno, &io_contig_bytes, NULL, bmap_flags, NULL)))
		        break;
	}
	FUNC7(io_bp);
	
	if (error)
	        FUNC9(bp, error);
	bp->b_resid = io_resid;
	/*
	 * This I/O is now complete
	 */
	FUNC5(bp);

	return error;
}