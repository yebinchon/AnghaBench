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
struct nfs_lock_owner {int nlo_refcnt; int nlo_flags; int /*<<< orphan*/  nlo_lock; } ;

/* Variables and functions */
 int NFS_LOCK_OWNER_BUSY ; 
 int NFS_LOCK_OWNER_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_lock_owner*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct nfs_lock_owner *nlop)
{
	FUNC0(&nlop->nlo_lock);
	if (nlop->nlo_refcnt < 1)
		FUNC3("nfs_lock_owner_rele: no refcnt");
	nlop->nlo_refcnt--;
	if (!nlop->nlo_refcnt && (nlop->nlo_flags & NFS_LOCK_OWNER_BUSY))
		FUNC3("nfs_lock_owner_rele: busy");
	/* XXX we may potentially want to clean up idle/unused lock owner structures */
	if (nlop->nlo_refcnt || (nlop->nlo_flags & NFS_LOCK_OWNER_LINK)) {
		FUNC1(&nlop->nlo_lock);
		return;
	}
	/* owner is no longer referenced or linked to mount, so destroy it */
	FUNC1(&nlop->nlo_lock);
	FUNC2(nlop);
}