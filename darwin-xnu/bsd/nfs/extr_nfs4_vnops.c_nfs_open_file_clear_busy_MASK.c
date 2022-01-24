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
struct nfs_open_file {int nof_flags; int /*<<< orphan*/  nof_lock; } ;

/* Variables and functions */
 int NFS_OPEN_FILE_BUSY ; 
 int NFS_OPEN_FILE_WANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_file*) ; 

void
FUNC4(struct nfs_open_file *nofp)
{
	int wanted;

	FUNC0(&nofp->nof_lock);
	if (!(nofp->nof_flags & NFS_OPEN_FILE_BUSY))
		FUNC2("nfs_open_file_clear_busy");
	wanted = (nofp->nof_flags & NFS_OPEN_FILE_WANT);
	nofp->nof_flags &= ~(NFS_OPEN_FILE_BUSY|NFS_OPEN_FILE_WANT);
	FUNC1(&nofp->nof_lock);
	if (wanted)
		FUNC3(nofp);
}