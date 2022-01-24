#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct TYPE_7__ {scalar_t__ le_next; } ;
struct nfsbuf {int nb_flags; int nb_error; int nb_dirty; scalar_t__ nb_commitlevel; scalar_t__ nb_dirtyend; scalar_t__ nb_dirtyoff; TYPE_1__ nb_vnbufs; scalar_t__ nb_endio; scalar_t__ nb_offio; TYPE_2__* nb_np; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_8__ {int n_error; int n_flag; int /*<<< orphan*/  n_dirtyblkhd; int /*<<< orphan*/  n_needcommitcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int EINTR ; 
 int ERESTART ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int NB_ASYNC ; 
 int NB_DELWRI ; 
 int NB_EINTR ; 
 int NB_ERROR ; 
 int NB_INVAL ; 
 int NB_NEEDCOMMIT ; 
 int NB_WRITEINPROG ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ NFSNOLIST ; 
 scalar_t__ NFS_WRITE_UNSTABLE ; 
 int NNEEDINVALIDATE ; 
 int NWRITEERR ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_vnbufs ; 
 int /*<<< orphan*/  FUNC10 (struct nfsbuf*) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC11 (struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_nbdwrite ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 

void
FUNC16(struct nfsbuf *bp, thread_t thd, kauth_cred_t cred)
{
	nfsnode_t np = bp->nb_np;
	int error = (bp->nb_flags & NB_ERROR) ? bp->nb_error : 0;
	int firstpg, lastpg;
	uint32_t pagemask;

	if ((error == EINTR) || (error == ERESTART)) {
		FUNC1(bp->nb_flags, NB_ERROR);
		FUNC7(bp->nb_flags, NB_EINTR);
	}

	if (!error) {
		/* calculate range of complete pages being written */
		firstpg = FUNC14(bp->nb_offio) / PAGE_SIZE;
		lastpg = (FUNC15(bp->nb_endio) - 1) / PAGE_SIZE;
		/* calculate mask for that page range written */
		pagemask = ((1 << (lastpg + 1)) - 1) & ~((1 << firstpg) - 1);
		/* clear dirty bits for pages we've written */
		bp->nb_dirty &= ~pagemask;
	}

	/* manage needcommit state */
	if (!error && (bp->nb_commitlevel == NFS_WRITE_UNSTABLE)) {
		if (!FUNC2(bp->nb_flags, NB_NEEDCOMMIT)) {
			FUNC12(np);
			np->n_needcommitcnt++;
			FUNC13(np);
			FUNC7(bp->nb_flags, NB_NEEDCOMMIT);
		}
		/* make sure nb_dirtyoff/nb_dirtyend reflect actual range written */
		bp->nb_dirtyoff = bp->nb_offio;
		bp->nb_dirtyend = bp->nb_endio;
	} else if (FUNC2(bp->nb_flags, NB_NEEDCOMMIT)) {
		FUNC12(np);
		np->n_needcommitcnt--;
		FUNC0(np);
		FUNC13(np);
		FUNC1(bp->nb_flags, NB_NEEDCOMMIT);
	}

	FUNC1(bp->nb_flags, NB_WRITEINPROG);

	/*
	 * For an unstable write, the buffer is still treated as dirty until
	 * a commit (or stable (re)write) is performed.  Buffers needing only
	 * a commit are marked with the NB_DELWRI and NB_NEEDCOMMIT flags.
	 *
	 * If the write was interrupted we set NB_EINTR.  Don't set NB_ERROR
	 * because that would cause the buffer to be dropped.  The buffer is
	 * still valid and simply needs to be written again.
	 */
	if ((error == EINTR) || (error == ERESTART) || (!error && (bp->nb_flags & NB_NEEDCOMMIT))) {
		FUNC1(bp->nb_flags, NB_INVAL);
		if (!FUNC2(bp->nb_flags, NB_DELWRI)) {
			FUNC7(bp->nb_flags, NB_DELWRI);
			FUNC8(nfs_buf_mutex);
			nfs_nbdwrite++;
			FUNC6();
			FUNC9(nfs_buf_mutex);
		}
		/*
		 * Since for the NB_ASYNC case, we've reassigned the buffer to the
		 * clean list, we have to reassign it back to the dirty one. Ugh.
		 */
		if (FUNC2(bp->nb_flags, NB_ASYNC)) {
			/* move to dirty list */
			FUNC8(nfs_buf_mutex);
			if (bp->nb_vnbufs.le_next != NFSNOLIST)
				FUNC4(bp, nb_vnbufs);
			FUNC3(&np->n_dirtyblkhd, bp, nb_vnbufs);
			FUNC9(nfs_buf_mutex);
		}
	} else {
		/* either there's an error or we don't need to commit */
		if (error) {
			/*
			 * There was a write error and we need to invalidate
			 * attrs and flush buffers in order to sync up with the
			 * server.  (if this write was extending the file, we
			 * may no longer know the correct size)
			 *
			 * But we can't call vinvalbuf while holding this
			 * buffer busy.  Set a flag to do it after releasing
			 * the buffer.
			 */
			FUNC12(np);
			np->n_error = error;
			np->n_flag |= (NWRITEERR | NNEEDINVALIDATE);
			FUNC5(np);
			FUNC13(np);
		}
		/* clear the dirty range */
		bp->nb_dirtyoff = bp->nb_dirtyend = 0;
	}

	if (!error && bp->nb_dirty)
		FUNC11(bp, thd, cred);
	FUNC10(bp);
}