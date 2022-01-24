#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_openflags; int /*<<< orphan*/  n_openlock; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int N_OPENBUSY ; 
 int N_OPENWANT ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 scalar_t__ FUNC5 (struct nfsmount*) ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(nfsnode_t np, thread_t thd)
{
	struct nfsmount *nmp;
	struct timespec ts = {2, 0};
	int error = 0, slpflag;

	nmp = FUNC0(np);
	if (FUNC5(nmp))
		return (ENXIO);
	slpflag = (FUNC1(nmp, INTR) && thd) ? PCATCH : 0;

	FUNC2(&np->n_openlock);
	while (np->n_openflags & N_OPENBUSY) {
		if ((error = FUNC6(nmp, NULL, thd, 0)))
			break;
		np->n_openflags |= N_OPENWANT;
		FUNC4(&np->n_openflags, &np->n_openlock, slpflag, "nfs_open_state_set_busy", &ts);
		slpflag = 0;
	}
	if (!error)
		np->n_openflags |= N_OPENBUSY;
	FUNC3(&np->n_openlock);

	return (error);
}