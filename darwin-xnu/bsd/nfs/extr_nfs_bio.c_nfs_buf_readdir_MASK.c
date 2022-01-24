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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct nfsbuf {int nb_error; int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_np; } ;
typedef  int /*<<< orphan*/  nfsnode_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NB_ERROR ; 
 int NFSERR_DIRBUFDROPPED ; 
 struct nfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFS_VER4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 

int
FUNC5(struct nfsbuf *bp, vfs_context_t ctx)
{
	nfsnode_t np = bp->nb_np;
	struct nfsmount *nmp = FUNC0(np);
	int error = 0;

	if (FUNC4(nmp))
		return (ENXIO);

	if (nmp->nm_vers < NFS_VER4)
		error = FUNC2(np, bp, ctx);
	else
		error = FUNC3(np, bp, ctx);

	if (error && (error != NFSERR_DIRBUFDROPPED)) {
		FUNC1(bp->nb_flags, NB_ERROR);
		bp->nb_error = error;
	}
	return (error);
}