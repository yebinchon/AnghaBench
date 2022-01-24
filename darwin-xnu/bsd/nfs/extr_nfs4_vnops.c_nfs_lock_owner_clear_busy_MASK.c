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
struct nfs_lock_owner {int nlo_flags; int /*<<< orphan*/  nlo_lock; } ;

/* Variables and functions */
 int NFS_LOCK_OWNER_BUSY ; 
 int NFS_LOCK_OWNER_WANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_lock_owner*) ; 

void
FUNC4(struct nfs_lock_owner *nlop)
{
	int wanted;

	FUNC0(&nlop->nlo_lock);
	if (!(nlop->nlo_flags & NFS_LOCK_OWNER_BUSY))
		FUNC2("nfs_lock_owner_clear_busy");
	wanted = (nlop->nlo_flags & NFS_LOCK_OWNER_WANT);
	nlop->nlo_flags &= ~(NFS_LOCK_OWNER_BUSY|NFS_LOCK_OWNER_WANT);
	FUNC1(&nlop->nlo_lock);
	if (wanted)
		FUNC3(nlop);
}