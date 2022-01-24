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
struct nfsreq {int r_flags; struct nfsmount* r_nmp; } ;
struct nfsmount {int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_resendq; } ;

/* Variables and functions */
 int R_RESENDQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfsreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsreq*) ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsreq*,int) ; 
 int /*<<< orphan*/  r_rchain ; 

void
FUNC7(struct nfsreq *req)
{
	struct nfsmount *nmp = req->r_nmp;

	if (FUNC4(nmp))
		return;

	FUNC3(req);
	FUNC1(&nmp->nm_lock);
	if (!(req->r_flags & R_RESENDQ)) {
		FUNC0(&nmp->nm_resendq, req, r_rchain);
		req->r_flags |= R_RESENDQ;
		/*
		 * We take a reference on this request so that it can't be
		 * destroyed while a resend is queued or in progress.
		 */
		FUNC6(req, 1);
	}
	FUNC5(nmp);
	FUNC2(&nmp->nm_lock);
}