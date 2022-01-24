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
struct nfs_open_owner {int noo_flags; int /*<<< orphan*/  noo_lock; } ;

/* Variables and functions */
 int NFS_OPEN_OWNER_BUSY ; 
 int NFS_OPEN_OWNER_WANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_owner*) ; 

void
FUNC4(struct nfs_open_owner *noop)
{
	int wanted;

	FUNC0(&noop->noo_lock);
	if (!(noop->noo_flags & NFS_OPEN_OWNER_BUSY))
		FUNC2("nfs_open_owner_clear_busy");
	wanted = (noop->noo_flags & NFS_OPEN_OWNER_WANT);
	noop->noo_flags &= ~(NFS_OPEN_OWNER_BUSY|NFS_OPEN_OWNER_WANT);
	FUNC1(&noop->noo_lock);
	if (wanted)
		FUNC3(noop);
}