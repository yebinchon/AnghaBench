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
struct vnop_monitor_args {int /*<<< orphan*/  a_vp; } ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_monlist; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_6__ {scalar_t__ le_next; } ;
struct TYPE_7__ {int n_mflag; TYPE_1__ n_monlink; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ NFSNOLIST ; 
 int NMMONSCANINPROG ; 
 int NMMONSCANWANT ; 
 scalar_t__ PZERO ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *,scalar_t__,char*,struct timespec*) ; 
 int /*<<< orphan*/  n_monlink ; 
 scalar_t__ FUNC7 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsmount*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(
	struct vnop_monitor_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		uint32_t a_events;
		uint32_t a_flags;
		void *a_handle;
		vfs_context_t a_context;
	} */ *ap)
{
	nfsnode_t np = FUNC2(ap->a_vp);
	struct nfsmount *nmp = FUNC3(ap->a_vp);
	int error = 0;

	if (FUNC7(nmp))
		return (ENXIO);

	/* make sure that the vnode's monitoring status is up to date */
	FUNC4(&nmp->nm_lock);
	if (FUNC9(ap->a_vp)) {
		/* This vnode is currently being monitored, make sure we're tracking it. */
		if (np->n_monlink.le_next == NFSNOLIST) {
			FUNC0(&nmp->nm_monlist, np, n_monlink);
			FUNC8(nmp);
		}
	} else {
		/* This vnode is no longer being monitored, make sure we're not tracking it. */
		/* Wait for any in-progress getattr to complete first. */
		while (np->n_mflag & NMMONSCANINPROG) {
			struct timespec ts = { 1, 0 };
			np->n_mflag |= NMMONSCANWANT;
			FUNC6(&np->n_mflag, &nmp->nm_lock, PZERO-1, "nfswaitmonscan", &ts);
		}
		if (np->n_monlink.le_next != NFSNOLIST) {
			FUNC1(np, n_monlink);
			np->n_monlink.le_next = NFSNOLIST;
		}
	}
	FUNC5(&nmp->nm_lock);

	return (error);
}