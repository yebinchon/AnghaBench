#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsmount {scalar_t__ nm_readahead; scalar_t__ nm_biosize; } ;
struct nfsbuf {int nb_validoff; int nb_validend; scalar_t__ nb_dirtyend; int /*<<< orphan*/  nb_rcred; int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_dirty; scalar_t__ nb_valid; } ;
typedef  scalar_t__ off_t ;
typedef  TYPE_1__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  scalar_t__ daddr64_t ;
struct TYPE_7__ {scalar_t__ n_lastrahead; scalar_t__ n_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENXIO ; 
 int IO_NOCACHE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int NBLK_NOWAIT ; 
 int NBLK_READ ; 
 int NB_ASYNC ; 
 int NB_CACHE ; 
 int NB_DELWRI ; 
 int NB_NCRDAHEAD ; 
 int NB_READ ; 
 struct nfsmount* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,struct nfsbuf**) ; 
 int FUNC7 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsbuf*,int) ; 
 scalar_t__ FUNC9 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int
FUNC12(nfsnode_t np, int ioflag, daddr64_t *rabnp, daddr64_t lastrabn, thread_t thd, kauth_cred_t cred)
{
	struct nfsmount *nmp = FUNC3(np);
	struct nfsbuf *bp;
	int error = 0;
	uint32_t nra;

	if (FUNC9(nmp))
		return (ENXIO);
	if (nmp->nm_readahead <= 0)
		return (0);
	if (*rabnp > lastrabn)
		return (0);

	for (nra = 0; (nra < nmp->nm_readahead) && (*rabnp <= lastrabn); nra++, *rabnp = *rabnp + 1) {
		/* check if block exists and is valid. */
		if ((*rabnp * nmp->nm_biosize) >= (off_t)np->n_size) {
			/* stop reading ahead if we're beyond EOF */
			*rabnp = lastrabn;
			break;
		}
		error = FUNC6(np, *rabnp, nmp->nm_biosize, thd, NBLK_READ|NBLK_NOWAIT, &bp);
		if (error)
			break;
		FUNC10(np);
		np->n_lastrahead = *rabnp;
		FUNC11(np);
		if (!bp)
			continue;
		if ((ioflag & IO_NOCACHE) && FUNC1(bp->nb_flags, NB_CACHE) &&
		    !bp->nb_dirty && !FUNC1(bp->nb_flags, (NB_DELWRI|NB_NCRDAHEAD))) {
			FUNC0(bp->nb_flags, NB_CACHE);
			bp->nb_valid = 0;
			bp->nb_validoff = bp->nb_validend = -1;
		}
		if ((bp->nb_dirtyend <= 0) && !bp->nb_dirty &&
		    !FUNC1(bp->nb_flags, (NB_CACHE|NB_DELWRI))) {
			FUNC4(bp->nb_flags, (NB_READ|NB_ASYNC));
			if (ioflag & IO_NOCACHE)
				FUNC4(bp->nb_flags, NB_NCRDAHEAD);
			if (!FUNC2(bp->nb_rcred) && FUNC2(cred)) {
				FUNC5(cred);
				bp->nb_rcred = cred;
			}
			if ((error = FUNC7(bp)))
				break;
			continue;
		}
		FUNC8(bp, 1);
	}
	return (error);
}