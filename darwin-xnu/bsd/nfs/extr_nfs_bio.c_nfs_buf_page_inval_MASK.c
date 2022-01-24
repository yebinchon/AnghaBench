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
struct nfsmount {int nm_biosize; } ;
struct nfsbuf {scalar_t__ nb_dirtyoff; scalar_t__ nb_dirtyend; int /*<<< orphan*/  nb_lflags; int /*<<< orphan*/  nb_flags; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  daddr64_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,struct nfsbuf*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBL_BUSY ; 
 int FUNC2 (struct nfsbuf*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_free ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct nfsbuf* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC10 (struct nfsbuf*) ; 
 scalar_t__ FUNC11 (struct nfsmount*) ; 
 int /*<<< orphan*/  nfsbufdelwri ; 
 int /*<<< orphan*/  nfsbufdelwricnt ; 

int
FUNC12(vnode_t vp, off_t offset)
{
	struct nfsmount *nmp = FUNC5(vp);
	struct nfsbuf *bp;
	int error = 0;

	if (FUNC11(nmp))
		return (ENXIO);

	FUNC6(nfs_buf_mutex);
	bp = FUNC9(FUNC4(vp), (daddr64_t)(offset / nmp->nm_biosize));
	if (!bp)
		goto out;
	FUNC0(325, bp, bp->nb_flags, bp->nb_dirtyoff, bp->nb_dirtyend);
	if (FUNC1(bp->nb_lflags, NBL_BUSY)) {
		error = EBUSY;
		goto out;
	}
	/*
	 * If there's a dirty range in the buffer, check to
	 * see if this page intersects with the dirty range.
	 * If it does, we can't let the pager drop the page.
	 */
	if (bp->nb_dirtyend > 0) {
		int start = offset - FUNC2(bp);
		if ((bp->nb_dirtyend > start) &&
		    (bp->nb_dirtyoff < (start + PAGE_SIZE))) {
			/*
			 * Before returning the bad news, move the
			 * buffer to the start of the delwri list and
			 * give the list a push to try to flush the
			 * buffer out.
			 */
			error = EBUSY;
			FUNC10(bp);
			FUNC3(&nfsbufdelwri, bp, nb_free);
			nfsbufdelwricnt++;
			FUNC8(1);
		}
	}
out:
	FUNC7(nfs_buf_mutex);
	return (error);
}