#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct clios {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  TYPE_1__* buf_t ;
struct TYPE_8__ {int b_flags; int /*<<< orphan*/  b_bcount; int /*<<< orphan*/  b_upl; int /*<<< orphan*/  b_vp; scalar_t__ b_lblkno; } ;

/* Variables and functions */
 int B_PASSIVE ; 
 int B_READ ; 
 int CL_ASYNC ; 
 int CL_PASSIVE ; 
 int CL_READ ; 
 int /*<<< orphan*/  DBG_FSRW ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,struct clios*,int (*) (TYPE_1__*,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC4(buf_t bp, int (*callback)(buf_t, void *), void *callback_arg)
{
        off_t  f_offset;
	int    flags;

	FUNC1((FUNC0(DBG_FSRW, 19)) | DBG_FUNC_START,
		     bp, (int)bp->b_lblkno, bp->b_bcount, bp->b_flags, 0);

	if (bp->b_flags & B_READ)
	        flags = CL_ASYNC | CL_READ;
	else
	        flags = CL_ASYNC;
	if (bp->b_flags & B_PASSIVE) 
		flags |= CL_PASSIVE;

	f_offset = FUNC3(bp->b_vp, bp->b_lblkno);

        return (FUNC2(bp->b_vp, bp->b_upl, 0, f_offset, bp->b_bcount, flags, bp, (struct clios *)NULL, callback, callback_arg));
}