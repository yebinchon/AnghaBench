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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint32_t ;
struct kqueue {int dummy; } ;
struct knote {int dummy; } ;
struct kevent_extinfo {int dummy; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; int /*<<< orphan*/ * fd_knhash; int /*<<< orphan*/ * fd_knlist; } ;
typedef  TYPE_1__* proc_t ;
typedef  int int32_t ;
struct TYPE_7__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PROC_PIDFDKQUEUE_KNOTES_MAX ; 
 struct knote* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kevent_extinfo*,unsigned long) ; 
 int FUNC3 (struct kevent_extinfo*,int /*<<< orphan*/ ,int) ; 
 struct kevent_extinfo* FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (struct kqueue*,struct knote*,struct kevent_extinfo*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct kevent_extinfo*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int
FUNC12(proc_t p, struct kqueue *kq, user_addr_t ubuf,
		uint32_t bufsize, int32_t *retval)
{
	struct knote *kn;
	int i;
	int err = 0;
	struct filedesc *fdp = p->p_fd;
	unsigned long nknotes = 0;
	unsigned long buflen = bufsize / sizeof(struct kevent_extinfo);
	struct kevent_extinfo *kqext = NULL;

	/* arbitrary upper limit to cap kernel memory usage, copyout size, etc. */
	buflen = FUNC9(buflen, PROC_PIDFDKQUEUE_KNOTES_MAX);

	kqext = FUNC4(buflen * sizeof(struct kevent_extinfo));
	if (kqext == NULL) {
		err = ENOMEM;
		goto out;
	}
	FUNC2(kqext, buflen * sizeof(struct kevent_extinfo));

	FUNC10(p);
	for (i = 0; i < fdp->fd_knlistsize; i++) {
		kn = FUNC0(&fdp->fd_knlist[i]);
		nknotes = FUNC5(kq, kn, kqext, buflen, nknotes);
	}
	FUNC11(p);

	if (fdp->fd_knhashmask != 0) {
		for (i = 0; i < (int)fdp->fd_knhashmask + 1; i++) {
			FUNC7(p);
			kn = FUNC0(&fdp->fd_knhash[i]);
			nknotes = FUNC5(kq, kn, kqext, buflen, nknotes);
			FUNC8(p);
		}
	}

	FUNC1(bufsize >= sizeof(struct kevent_extinfo) * FUNC9(buflen, nknotes));
	err = FUNC3(kqext, ubuf, sizeof(struct kevent_extinfo) * FUNC9(buflen, nknotes));

out:
	if (kqext) {
		FUNC6(kqext, buflen * sizeof(struct kevent_extinfo));
		kqext = NULL;
	}

	if (!err) {
		*retval = FUNC9(nknotes, PROC_PIDFDKQUEUE_KNOTES_MAX);
	}
	return err;
}