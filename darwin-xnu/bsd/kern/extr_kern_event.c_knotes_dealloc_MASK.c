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
struct kqueue {int dummy; } ;
struct knote {int dummy; } ;
struct klist {int dummy; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; struct klist* fd_knhash; struct klist* fd_knlist; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_7__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct klist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 struct knote* FUNC1 (struct klist*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*,struct knote*,int /*<<< orphan*/ *) ; 
 struct kqueue* FUNC5 (struct knote*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(proc_t p)
{
	struct filedesc *fdp = p->p_fd;
	struct kqueue *kq;
	struct knote *kn;
	struct  klist *kn_hash = NULL;
	int i;

	/* Close all the fd-indexed knotes up front */
	if (fdp->fd_knlistsize > 0) {
		for (i = 0; i < fdp->fd_knlistsize; i++) {
			while ((kn = FUNC1(&fdp->fd_knlist[i])) != NULL) {
				kq = FUNC5(kn);
				FUNC6(kq);
				FUNC8(p);
				FUNC4(kq, kn, NULL);
				FUNC7(p);
			}
		}
		/* free the table */
		FUNC0(fdp->fd_knlist, M_KQUEUE);
		fdp->fd_knlist = NULL;
	}
	fdp->fd_knlistsize = -1;

	FUNC2(p);
	FUNC8(p);

	/* Clean out all the hashed knotes as well */
	if (fdp->fd_knhashmask != 0) {
		for (i = 0; i <= (int)fdp->fd_knhashmask; i++) {
			while ((kn = FUNC1(&fdp->fd_knhash[i])) != NULL) {
				kq = FUNC5(kn);
				FUNC6(kq);
				FUNC3(p);
				FUNC4(kq, kn, NULL);
				FUNC2(p);
			}
		}
		kn_hash = fdp->fd_knhash;
		fdp->fd_knhashmask = 0;
		fdp->fd_knhash = NULL;
	}

	FUNC3(p);

	/* free the kn_hash table */
	if (kn_hash)
		FUNC0(kn_hash, M_KQUEUE);

	FUNC7(p);
}