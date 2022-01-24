#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct bufattr {int dummy; } ;
typedef  TYPE_2__* mount_t ;
typedef  TYPE_3__* buf_t ;
struct TYPE_12__ {scalar_t__ bufs_iobufinuse; int /*<<< orphan*/  bufs_iobufinuse_vdev; } ;
struct TYPE_11__ {int b_lflags; int /*<<< orphan*/  b_attr; int /*<<< orphan*/  b_flags; TYPE_1__* b_vp; } ;
struct TYPE_10__ {int /*<<< orphan*/  mnt_iobufinuse; } ;
struct TYPE_9__ {TYPE_2__* v_mount; } ;

/* Variables and functions */
 int BL_IOBUF_VDEV ; 
 int /*<<< orphan*/  B_INVAL ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 TYPE_7__ bufstats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* dead_mountp ; 
 int /*<<< orphan*/  iobuffer_mtxp ; 
 int /*<<< orphan*/  iobufqueue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ need_iobuffer ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

void
FUNC6(buf_t bp)
{
	int need_wakeup = 0;
	int free_for_virtualdev = FALSE;
	mount_t mp = NULL;

	/* Was this iobuf for a diskimage ? */
	if (bp->b_lflags & BL_IOBUF_VDEV) {
		free_for_virtualdev = TRUE;
		if (bp->b_vp)
			mp = bp->b_vp->v_mount;
	}

	/*
	 * put buffer back on the head of the iobufqueue
	 */
	bp->b_vp = NULL;
	bp->b_flags = B_INVAL;

	/* Zero out the bufattr and its flags before relinquishing this iobuf */
	FUNC1 (&bp->b_attr, sizeof(struct bufattr));
	
	FUNC2(iobuffer_mtxp);

	FUNC0(bp, &iobufqueue, -1);

	if (need_iobuffer) {
	        /*
		 * Wake up any processes waiting because they need an io buffer
		 *
		 * do the wakeup after we drop the mutex... it's possible that the
		 * wakeup will be superfluous if need_iobuffer gets set again and
		 * another thread runs this path, but it's highly unlikely, doesn't
		 * hurt, and it means we don't hold up I/O progress if the wakeup blocks
		 * trying to grab a task related lock...
		 */
		need_iobuffer = 0;
		need_wakeup = 1;
	}
	if (bufstats.bufs_iobufinuse <= 0)
		FUNC4("free_io_buf: bp(%p) - bufstats.bufs_iobufinuse < 0", bp);

	bufstats.bufs_iobufinuse--;

	if (free_for_virtualdev) {
		bufstats.bufs_iobufinuse_vdev--;
		if (mp && mp != dead_mountp)
			mp->mnt_iobufinuse--;
	}

	FUNC3(iobuffer_mtxp);

	if (need_wakeup)
	        FUNC5(&need_iobuffer);
}