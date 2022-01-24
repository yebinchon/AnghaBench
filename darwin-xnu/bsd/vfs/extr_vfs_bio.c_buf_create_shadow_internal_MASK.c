#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  caddr_t ;
typedef  TYPE_1__* buf_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int b_flags; int b_lflags; scalar_t__ b_data_ref; void (* b_iodone ) (TYPE_1__*,void*) ;uintptr_t b_datap; scalar_t__ b_shadow_ref; struct TYPE_11__* b_data_store; int /*<<< orphan*/  b_bcount; int /*<<< orphan*/  b_bufsize; struct TYPE_11__* b_shadow; int /*<<< orphan*/  b_orig; void* b_transaction; int /*<<< orphan*/  b_lblkno; int /*<<< orphan*/  b_blkno; int /*<<< orphan*/  b_vp; } ;

/* Variables and functions */
 int BL_EXTERNAL ; 
 int BL_IOBUF ; 
 int BL_IOBUF_ALLOC ; 
 int BL_SHADOW ; 
 int B_ASYNC ; 
 int B_CALL ; 
 int B_FUA ; 
 int B_META ; 
 int B_READ ; 
 int B_ZALLOC ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf_mtxp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static buf_t
FUNC7(buf_t bp, boolean_t force_copy, uintptr_t external_storage, void (*iodone)(buf_t, void *), void *arg, int priv)
{
        buf_t	io_bp;

	FUNC0(0xbbbbc000 | DBG_FUNC_START, bp, 0, 0, 0, 0);

	if ( !(bp->b_flags & B_META) || (bp->b_lflags & BL_IOBUF)) {

		FUNC0(0xbbbbc000 | DBG_FUNC_END, bp, 0, 0, 0, 0);
		return (NULL);
	}
#ifdef BUF_MAKE_PRIVATE
	if (bp->b_shadow_ref && bp->b_data_ref == 0 && external_storage == 0)
		panic("buf_create_shadow: %p is in the private state (%d, %d)", bp, bp->b_shadow_ref, bp->b_data_ref);
#endif
	io_bp = FUNC1(bp->b_vp, priv);

	io_bp->b_flags = bp->b_flags & (B_META | B_ZALLOC | B_ASYNC | B_READ | B_FUA);
	io_bp->b_blkno = bp->b_blkno;
	io_bp->b_lblkno = bp->b_lblkno;

	if (iodone) {
	        io_bp->b_transaction = arg;
		io_bp->b_iodone = iodone;
		io_bp->b_flags |= B_CALL;
	}
	if (force_copy == FALSE) {
		io_bp->b_bcount = bp->b_bcount;
		io_bp->b_bufsize = bp->b_bufsize;

		if (external_storage) {
			io_bp->b_datap = external_storage;
#ifdef BUF_MAKE_PRIVATE
			io_bp->b_data_store = NULL;
#endif
		} else {
			io_bp->b_datap = bp->b_datap;
#ifdef BUF_MAKE_PRIVATE
			io_bp->b_data_store = bp;
#endif
		}
		*(buf_t *)(&io_bp->b_orig) = bp;

		FUNC4(buf_mtxp);

		io_bp->b_lflags |= BL_SHADOW;
		io_bp->b_shadow = bp->b_shadow;
		bp->b_shadow = io_bp;
		bp->b_shadow_ref++;

#ifdef BUF_MAKE_PRIVATE
		if (external_storage)
			io_bp->b_lflags |= BL_EXTERNAL;
		else
			bp->b_data_ref++;
#endif
		FUNC5(buf_mtxp);
	} else {
		if (external_storage) {
#ifdef BUF_MAKE_PRIVATE
			io_bp->b_lflags |= BL_EXTERNAL;
#endif
			io_bp->b_bcount = bp->b_bcount;
			io_bp->b_bufsize = bp->b_bufsize;
			io_bp->b_datap = external_storage;
		} else {
			FUNC2(io_bp, bp->b_bcount);

			io_bp->b_lflags |= BL_IOBUF_ALLOC;
		}
		FUNC3((caddr_t)bp->b_datap, (caddr_t)io_bp->b_datap, bp->b_bcount);

#ifdef BUF_MAKE_PRIVATE
		io_bp->b_data_store = NULL;
#endif
	}
	FUNC0(0xbbbbc000 | DBG_FUNC_END, bp, bp->b_shadow_ref, 0, io_bp, 0);

	return (io_bp);
}