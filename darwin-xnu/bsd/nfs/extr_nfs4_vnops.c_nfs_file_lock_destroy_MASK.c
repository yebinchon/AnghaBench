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
struct nfs_lock_owner {int /*<<< orphan*/  nlo_lock; } ;
struct nfs_file_lock {int nfl_flags; struct nfs_lock_owner* nfl_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_file_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int NFS_FILE_LOCK_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_file_lock*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_lock_owner*) ; 

void
FUNC5(struct nfs_file_lock *nflp)
{
	struct nfs_lock_owner *nlop = nflp->nfl_owner;

	if (nflp->nfl_flags & NFS_FILE_LOCK_ALLOC) {
		nflp->nfl_owner = NULL;
		FUNC0(nflp, M_TEMP);
	} else {
		FUNC2(&nlop->nlo_lock);
		FUNC1(nflp, sizeof(*nflp));
		FUNC3(&nlop->nlo_lock);
	}
	FUNC4(nlop);
}