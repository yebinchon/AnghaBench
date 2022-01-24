#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
struct bufhashhdr {int dummy; } ;
typedef  int /*<<< orphan*/  daddr64_t ;
typedef  TYPE_1__* buf_t ;
struct TYPE_4__ {scalar_t__ b_shadow_ref; int /*<<< orphan*/  b_lflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BL_WANTED_REF ; 
 struct bufhashhdr* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PRIBIO ; 
 int PSPIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf_mtxp ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufhashhdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 

void
FUNC6(vnode_t vp, daddr64_t blkno)
{
	buf_t bp;
	struct	bufhashhdr *dp;

	dp = FUNC0(vp, blkno);

	FUNC3(buf_mtxp);

	for (;;) {
		if ((bp = FUNC2(vp, blkno, dp)) == NULL)
			break;

		if (bp->b_shadow_ref == 0)
			break;

		FUNC1(bp->b_lflags, BL_WANTED_REF);

		(void) FUNC5(bp, buf_mtxp, PSPIN | (PRIBIO+1), "buf_wait_for_shadow", NULL);
	}
	FUNC4(buf_mtxp);
}