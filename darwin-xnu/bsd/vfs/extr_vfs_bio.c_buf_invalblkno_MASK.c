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
struct bufhashhdr {int dummy; } ;
struct buf {int b_lflags; int b_flags; int b_tag; int /*<<< orphan*/  b_owner; } ;
typedef  scalar_t__ errno_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  struct buf* buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  BL_BUSY ; 
 int /*<<< orphan*/  BL_WANTED ; 
 struct bufhashhdr* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUF_WAIT ; 
 int /*<<< orphan*/  B_INVAL ; 
 scalar_t__ EBUSY ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  buf_busycount ; 
 int /*<<< orphan*/  buf_mtxp ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct buf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufhashhdr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 

errno_t
FUNC10(vnode_t vp, daddr64_t lblkno, int flags)
{
        buf_t	bp;
	errno_t	error;
	struct bufhashhdr *dp;

	dp = FUNC0(vp, lblkno);

relook:	
	FUNC7(buf_mtxp);

	if ((bp = FUNC6(vp, lblkno, dp)) == (struct buf *)0) {
	        FUNC8(buf_mtxp);
		return (0);
	}
	if (FUNC1(bp->b_lflags, BL_BUSY)) {
	        if ( !FUNC1(flags, BUF_WAIT)) {
		        FUNC8(buf_mtxp);
			return (EBUSY);
		}
	        FUNC2(bp->b_lflags, BL_WANTED);

		error = FUNC9((caddr_t)bp, buf_mtxp, PDROP | (PRIBIO + 1), "buf_invalblkno", NULL);

		if (error) {
			return (error);
		}
		goto relook;
	}
	FUNC3(bp);
	FUNC2(bp->b_lflags, BL_BUSY);
	FUNC2(bp->b_flags, B_INVAL);
	buf_busycount++;
#ifdef JOE_DEBUG
	bp->b_owner = current_thread();
	bp->b_tag   = 4;
#endif
	FUNC8(buf_mtxp);
	FUNC4(bp);

	return (0);
}