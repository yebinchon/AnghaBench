#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nfsmount {scalar_t__ nm_verf; } ;
struct nfsbuf {scalar_t__ nb_verf; int /*<<< orphan*/  nb_flags; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_7__ {int /*<<< orphan*/  n_needcommitcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int NB_NEEDCOMMIT ; 
 int NB_STALEWVERF ; 
 struct nfsmount* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(nfsnode_t np, struct nfsbuf *bp)
{
	struct nfsmount *nmp;

	if (!FUNC2(bp->nb_flags, NB_NEEDCOMMIT))
		return;

	nmp = FUNC3(np);
	if (FUNC4(nmp))
		return;
	if (!FUNC2(bp->nb_flags, NB_STALEWVERF) && (bp->nb_verf == nmp->nm_verf))
		return;

	/* write verifier changed, clear commit/wverf flags */
	FUNC1(bp->nb_flags, (NB_NEEDCOMMIT | NB_STALEWVERF));
	bp->nb_verf = 0;
	FUNC5(np);
	np->n_needcommitcnt--;
	FUNC0(np);
	FUNC6(np);
}