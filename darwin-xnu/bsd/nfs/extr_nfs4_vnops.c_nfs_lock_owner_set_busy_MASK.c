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
typedef  int /*<<< orphan*/  thread_t ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {int dummy; } ;
struct nfs_lock_owner {int nlo_flags; int /*<<< orphan*/  nlo_lock; TYPE_1__* nlo_open_owner; } ;
struct TYPE_2__ {struct nfsmount* noo_mount; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR ; 
 int NFS_LOCK_OWNER_BUSY ; 
 int NFS_LOCK_OWNER_WANT ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_lock_owner*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int FUNC5 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct nfs_lock_owner *nlop, thread_t thd)
{
	struct nfsmount *nmp;
	struct timespec ts = {2, 0};
	int error = 0, slpflag;

	nmp = nlop->nlo_open_owner->noo_mount;
	if (FUNC4(nmp))
		return (ENXIO);
	slpflag = (FUNC0(nmp, INTR) && thd) ? PCATCH : 0;

	FUNC1(&nlop->nlo_lock);
	while (nlop->nlo_flags & NFS_LOCK_OWNER_BUSY) {
		if ((error = FUNC5(nmp, NULL, thd, 0)))
			break;
		nlop->nlo_flags |= NFS_LOCK_OWNER_WANT;
		FUNC3(nlop, &nlop->nlo_lock, slpflag, "nfs_lock_owner_set_busy", &ts);
		slpflag = 0;
	}
	if (!error)
		nlop->nlo_flags |= NFS_LOCK_OWNER_BUSY;
	FUNC2(&nlop->nlo_lock);

	return (error);
}