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
struct nfsbuf {int /*<<< orphan*/  nb_error; int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_lflags; TYPE_1__* nb_np; } ;
struct TYPE_4__ {int /*<<< orphan*/  n_numoutput; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBL_WANTED ; 
 int /*<<< orphan*/  FUNC4 (struct nfsbuf*) ; 
 int /*<<< orphan*/  NB_ASYNC ; 
 int /*<<< orphan*/  NB_DONE ; 
 int /*<<< orphan*/  NB_READ ; 
 int /*<<< orphan*/  NB_WRITEINPROG ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct nfsbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsbuf*) ; 

void
FUNC15(struct nfsbuf *bp)
{

	FUNC2(550, bp, FUNC4(bp), bp->nb_flags, bp->nb_error);

	if (FUNC3(bp->nb_flags, NB_DONE))
		FUNC12("nfs_buf_iodone already");

	if (!FUNC3(bp->nb_flags, NB_READ)) {
		FUNC0(bp->nb_flags, NB_WRITEINPROG);
		/*
		 * vnode_writedone() takes care of waking up
		 * any throttled write operations
		 */
		FUNC13(FUNC5(bp->nb_np));
		FUNC10(bp->nb_np);
		bp->nb_np->n_numoutput--;
		FUNC11(bp->nb_np);
	}
	if (FUNC3(bp->nb_flags, NB_ASYNC)) {	/* if async, release it */
		FUNC6(bp->nb_flags, NB_DONE);		/* note that it's done */
		FUNC9(bp, 1);
	} else {		                        /* or just wakeup the buffer */	
	        FUNC7(nfs_buf_mutex);
		FUNC6(bp->nb_flags, NB_DONE);		/* note that it's done */
		FUNC0(bp->nb_lflags, NBL_WANTED);
	        FUNC8(nfs_buf_mutex);
		FUNC14(bp);
	}

	FUNC1(550, bp, FUNC4(bp), bp->nb_flags, bp->nb_error);
}