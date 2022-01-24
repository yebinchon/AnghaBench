#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfsmount {int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_dreturnq; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_6__ {scalar_t__ tqe_next; } ;
struct TYPE_7__ {TYPE_1__ n_dreturn; int /*<<< orphan*/  n_openlock; int /*<<< orphan*/  n_openflags; } ;

/* Variables and functions */
 scalar_t__ NFSNOLIST ; 
 struct nfsmount* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  N_DELEG_RETURN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_dreturn ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsmount*) ; 

void
FUNC6(nfsnode_t np)
{
	struct nfsmount *nmp;

	nmp = FUNC0(np);
	if (FUNC4(nmp))
		return;

	FUNC2(&np->n_openlock);
	np->n_openflags |= N_DELEG_RETURN;
	FUNC3(&np->n_openlock);

	FUNC2(&nmp->nm_lock);
	if (np->n_dreturn.tqe_next == NFSNOLIST)
		FUNC1(&nmp->nm_dreturnq, np, n_dreturn);
	FUNC5(nmp);
	FUNC3(&nmp->nm_lock);
}