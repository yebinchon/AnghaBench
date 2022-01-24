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
struct TYPE_2__ {int nfsa_flags; } ;
struct nfsmount {scalar_t__ nm_vers; int nm_state; int /*<<< orphan*/  nm_lock; TYPE_1__ nm_fsattr; } ;
typedef  int /*<<< orphan*/  mount_t ;

/* Variables and functions */
 int NFSSTA_GOTPATHCONF ; 
 int NFS_FSFLAG_CASE_INSENSITIVE ; 
 int NFS_FSFLAG_HOMOGENEOUS ; 
 scalar_t__ NFS_VER2 ; 
 scalar_t__ NFS_VER3 ; 
 struct nfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 

int
FUNC4(mount_t mp)
{
	struct nfsmount *nmp = FUNC0(mp);
	int answer = 0;
	int skip = 0;
	
	if (FUNC3(nmp)) {
		return (0);
	}
	
	if (nmp->nm_vers == NFS_VER2) {
		/* V2 has no way to know */
		return (0);
	}

	FUNC1(&nmp->nm_lock);
	if (nmp->nm_vers == NFS_VER3) {
		if (!(nmp->nm_state & NFSSTA_GOTPATHCONF)) {
			/* We're holding the node lock so we just return 
			 * with answer as case sensitive. Is very rare
			 * for file systems not to be homogenous w.r.t. pathconf
			 */
			skip = 1;
		} 
	} else if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS)) {
		/* no pathconf info cached */
		skip = 1;
	}

	if (!skip && (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_CASE_INSENSITIVE))
		answer = 1;

	FUNC2(&nmp->nm_lock);

	return (answer);
}