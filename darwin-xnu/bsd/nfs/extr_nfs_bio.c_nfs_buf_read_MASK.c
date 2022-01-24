#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * thread_t ;
struct nfsbuf {int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_rcred; int /*<<< orphan*/  nb_np; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_2__ {int /*<<< orphan*/  read_bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NB_ASYNC ; 
 int /*<<< orphan*/  NB_DONE ; 
 int /*<<< orphan*/  NB_READ ; 
 int /*<<< orphan*/  FUNC3 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nfsbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ nfsstats ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(struct nfsbuf *bp)
{
	int error = 0;
	nfsnode_t np;
	thread_t thd;
	kauth_cred_t cred;

	np = bp->nb_np;
	cred = bp->nb_rcred;
	if (FUNC2(cred))
		FUNC6(cred);
	thd = FUNC1(bp->nb_flags, NB_ASYNC) ? NULL : FUNC5();

	/* sanity checks */
	if (!FUNC1(bp->nb_flags, NB_READ))
		FUNC9("nfs_buf_read: !NB_READ");
	if (FUNC1(bp->nb_flags, NB_DONE))
		FUNC0(bp->nb_flags, NB_DONE);

	FUNC3(bp);

	FUNC4(1, &nfsstats.read_bios);

	error = FUNC8(bp, thd, cred);
	/*
	 * For async I/O, the callbacks will finish up the
	 * read.  Otherwise, the read has already been finished.
	 */

	if (FUNC2(cred))
		FUNC7(&cred);
	return (error);
}