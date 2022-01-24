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
struct nfsbuf {int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_np; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NB_ASYNC ; 
 int /*<<< orphan*/  NB_NEEDCOMMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfsbuf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_free ; 
 int FUNC6 (struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsbuf*) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfsbufdelwri ; 
 int /*<<< orphan*/  nfsbufdelwricnt ; 

void
FUNC14(void)
{
	struct nfsbuf *bp;
	nfsnode_t np;
	int error, i = 0;

	while (i < 8 && (bp = FUNC2(&nfsbufdelwri)) != NULL) {
		np = bp->nb_np;
		FUNC11(bp);
		FUNC9(bp);
		while ((error = FUNC6(bp, 0, 0, 0)) == EAGAIN);
		FUNC10(bp);
		if (error)
			break;
		if (!bp->nb_np) {
			/* buffer is no longer valid */
			FUNC8(bp);
			continue;
		}
		if (FUNC0(bp->nb_flags, NB_NEEDCOMMIT))
			FUNC7(np, bp);
		if (FUNC0(bp->nb_flags, NB_NEEDCOMMIT)) {
			/* put buffer at end of delwri list */
			FUNC3(&nfsbufdelwri, bp, nb_free);
			nfsbufdelwricnt++;
			FUNC8(bp);
			FUNC5(nfs_buf_mutex);
			FUNC13(np, 1);
		} else {
			FUNC1(bp->nb_flags, NB_ASYNC);
			FUNC5(nfs_buf_mutex);
			FUNC12(bp);
		}
		i++;
		FUNC4(nfs_buf_mutex);
	}
}