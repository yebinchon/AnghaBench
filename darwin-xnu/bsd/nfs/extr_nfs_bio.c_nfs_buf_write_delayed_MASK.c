#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ le_next; } ;
struct nfsbuf {int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_error; TYPE_1__ nb_vnbufs; int /*<<< orphan*/  nb_dirty; int /*<<< orphan*/  nb_dirtyend; int /*<<< orphan*/  nb_dirtyoff; TYPE_2__* nb_np; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_7__ {int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_dirtyblkhd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsbuf*) ; 
 int /*<<< orphan*/  NB_ASYNC ; 
 int /*<<< orphan*/  NB_DELWRI ; 
 int /*<<< orphan*/  NB_DONE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ NFSNOLIST ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ NFS_A_LOT_OF_DELAYED_WRITES ; 
 int /*<<< orphan*/  NMODIFIED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VNODE_ASYNC_THROTTLE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_vnbufs ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC12 (struct nfsbuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsbuf*) ; 
 scalar_t__ nfs_nbdwrite ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC18(struct nfsbuf *bp)
{
	nfsnode_t np = bp->nb_np;

	FUNC2(551, bp, FUNC6(bp), bp->nb_flags, 0);
	FUNC0(551, bp, bp->nb_dirtyoff, bp->nb_dirtyend, bp->nb_dirty);

	/*
	 * If the block hasn't been seen before:
	 *	(1) Mark it as having been seen,
	 *	(2) Make sure it's on its node's correct block list,
	 */
	if (!FUNC3(bp->nb_flags, NB_DELWRI)) {
		FUNC9(bp->nb_flags, NB_DELWRI);
		/* move to dirty list */
		FUNC10(nfs_buf_mutex);
		nfs_nbdwrite++;
		FUNC7();
		if (bp->nb_vnbufs.le_next != NFSNOLIST)
			FUNC5(bp, nb_vnbufs);
		FUNC4(&np->n_dirtyblkhd, bp, nb_vnbufs);
		FUNC11(nfs_buf_mutex);
	}

	/*
	 * If the vnode has "too many" write operations in progress
	 * wait for them to finish the IO
	 */
	FUNC17(FUNC8(np), VNODE_ASYNC_THROTTLE, 0, 0, "nfs_buf_write_delayed");

	/* the file is in a modified state, so make sure the flag's set */
	FUNC14(np);
	np->n_flag |= NMODIFIED;
	FUNC15(np);

	/*
	 * If we have too many delayed write buffers,
	 * just fall back to doing the async write.
	 */
	if (nfs_nbdwrite < 0)
		FUNC16("nfs_buf_write_delayed: Negative nfs_nbdwrite");
	if (nfs_nbdwrite > NFS_A_LOT_OF_DELAYED_WRITES) {
		/* issue async write */
		FUNC9(bp->nb_flags, NB_ASYNC);
		FUNC13(bp);
		FUNC1(551, bp, FUNC6(bp), bp->nb_flags, bp->nb_error);
		return;
	}

	/* Otherwise, the "write" is done, so mark and release the buffer. */
	FUNC9(bp->nb_flags, NB_DONE);
	FUNC12(bp, 1);
	FUNC1(551, bp, FUNC6(bp), bp->nb_flags, 0);
	return;
}