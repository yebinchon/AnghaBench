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
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
typedef  int /*<<< orphan*/  buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

errno_t
FUNC2(vnode_t vp, daddr64_t blkno, int size, kauth_cred_t cred, buf_t *bpp)
{
	buf_t	bp;

	/* Get buffer for block. */
	bp = *bpp = FUNC0(vp, blkno, size, cred, 0, BLK_META);

	/* Wait for the read to complete, and return result. */
	return (FUNC1(bp));
}