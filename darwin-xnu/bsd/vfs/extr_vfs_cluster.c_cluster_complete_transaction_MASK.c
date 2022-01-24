#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* buf_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  b_vp; int /*<<< orphan*/  b_flags; struct TYPE_5__* b_trans_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TDONE ; 
 int CL_ASYNC ; 
 int CL_KEEPCACHED ; 
 int CL_PAGEOUT ; 
 int ENXIO ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(buf_t *cbp_head, void *callback_arg, int *retval, int flags, int needwait)
{
        buf_t	cbp;
	int	error;
	boolean_t isswapout = FALSE;

	/*
	 * cluster_complete_transaction will
	 * only be called if we've issued a complete chain in synchronous mode
	 * or, we've already done a cluster_wait_IO on an incomplete chain
	 */
        if (needwait) {
	        for (cbp = *cbp_head; cbp; cbp = cbp->b_trans_next)
		        FUNC0(cbp);
	}
	/*
	 * we've already waited on all of the I/Os in this transaction,
	 * so mark all of the buf_t's in this transaction as B_TDONE
	 * so that cluster_iodone sees the transaction as completed
	 */
	for (cbp = *cbp_head; cbp; cbp = cbp->b_trans_next)
		cbp->b_flags |= B_TDONE;
	cbp = *cbp_head;

	if ((flags & (CL_ASYNC | CL_PAGEOUT)) == CL_PAGEOUT && FUNC2(cbp->b_vp))
		isswapout = TRUE;

	error = FUNC1(cbp, callback_arg);

	if ( !(flags & CL_ASYNC) && error && *retval == 0) {
		if (((flags & (CL_PAGEOUT | CL_KEEPCACHED)) != CL_PAGEOUT) || (error != ENXIO))
			*retval = error;
		else if (isswapout == TRUE)
			*retval = error;
	}
	*cbp_head = (buf_t)NULL;
}