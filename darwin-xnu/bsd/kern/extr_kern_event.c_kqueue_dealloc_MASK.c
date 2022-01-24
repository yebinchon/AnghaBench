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
typedef  scalar_t__ thread_t ;
struct turnstile {int dummy; } ;
struct proc {struct filedesc* p_fd; } ;
struct TYPE_2__ {int kqr_state; } ;
struct kqworkq {scalar_t__ kqwl_retains; int /*<<< orphan*/  kqwl_statelock; int /*<<< orphan*/ * kqwl_turnstile; TYPE_1__ kqwl_request; } ;
struct kqworkloop {scalar_t__ kqwl_retains; int /*<<< orphan*/  kqwl_statelock; int /*<<< orphan*/ * kqwl_turnstile; TYPE_1__ kqwl_request; } ;
struct kqueue {int kq_state; int /*<<< orphan*/  kq_reqlock; int /*<<< orphan*/  kq_lock; int /*<<< orphan*/  kq_wqs; struct proc* kq_p; } ;
struct kqfile {scalar_t__ kqwl_retains; int /*<<< orphan*/  kqwl_statelock; int /*<<< orphan*/ * kqwl_turnstile; TYPE_1__ kqwl_request; } ;
struct knote {int dummy; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; int /*<<< orphan*/ * fd_knhash; int /*<<< orphan*/ * fd_knlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  KNOTE_KQ_LOCK_ON_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KQR_ALLOCATED_TURNSTILE ; 
 int KQ_WORKLOOP ; 
 int KQ_WORKQ ; 
 struct knote* FUNC1 (int /*<<< orphan*/ *) ; 
 struct knote* FUNC2 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  kn_link ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  knlc ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*,struct knote*,int /*<<< orphan*/ *) ; 
 struct kqueue* FUNC7 (struct knote*) ; 
 scalar_t__ FUNC8 (struct kqueue*,struct knote*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kq_lck_grp ; 
 int /*<<< orphan*/  kqfile_zone ; 
 int /*<<< orphan*/  FUNC9 (struct kqueue*) ; 
 scalar_t__ FUNC10 (struct kqworkq*) ; 
 int /*<<< orphan*/  kqworkloop_zone ; 
 int /*<<< orphan*/  kqworkq_zone ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (uintptr_t,int /*<<< orphan*/ **,struct turnstile**) ; 
 int /*<<< orphan*/  FUNC18 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct kqworkq*) ; 

void
FUNC21(struct kqueue *kq)
{
	struct proc *p;
	struct filedesc *fdp;
	struct knote *kn;
	int i;

	if (kq == NULL)
		return;

	p = kq->kq_p;
	fdp = p->p_fd;

	/*
	 * Workloops are refcounted by their knotes, so there's no point
	 * spending a lot of time under these locks just to deallocate one.
	 */
	if ((kq->kq_state & KQ_WORKLOOP) == 0) {
		FUNC0(knlc);

		FUNC13(p);
		for (i = 0; i < fdp->fd_knlistsize; i++) {
			kn = FUNC1(&fdp->fd_knlist[i]);
			while (kn != NULL) {
				if (kq == FUNC7(kn)) {
					FUNC9(kq);
					FUNC14(p);
					if (FUNC8(kq, kn, &knlc, KNOTE_KQ_LOCK_ON_SUCCESS)) {
						FUNC6(kq, kn, &knlc);
					}
					FUNC13(p);
					/* start over at beginning of list */
					kn = FUNC1(&fdp->fd_knlist[i]);
					continue;
				}
				kn = FUNC2(kn, kn_link);
			}
		}

		FUNC4(p);
		FUNC14(p);

		if (fdp->fd_knhashmask != 0) {
			for (i = 0; i < (int)fdp->fd_knhashmask + 1; i++) {
				kn = FUNC1(&fdp->fd_knhash[i]);
				while (kn != NULL) {
					if (kq == FUNC7(kn)) {
						FUNC9(kq);
						FUNC5(p);
						if (FUNC8(kq, kn, &knlc, KNOTE_KQ_LOCK_ON_SUCCESS)) {
							FUNC6(kq, kn, &knlc);
						}
						FUNC4(p);
						/* start over at beginning of list */
						kn = FUNC1(&fdp->fd_knhash[i]);
						continue;
					}
					kn = FUNC2(kn, kn_link);
				}
			}
		}
		FUNC5(p);
	}

	if (kq->kq_state & KQ_WORKLOOP) {
		struct kqworkloop *kqwl = (struct kqworkloop *)kq;
		thread_t cur_owner = FUNC10(kqwl);

		if (cur_owner) FUNC15(cur_owner);

		if (kqwl->kqwl_request.kqr_state & KQR_ALLOCATED_TURNSTILE) {
			struct turnstile *ts;
			FUNC17((uintptr_t)kqwl, &kqwl->kqwl_turnstile, &ts);
			FUNC16();
			FUNC18(ts);
		} else {
			FUNC3(kqwl->kqwl_turnstile == NULL);
		}
	}

	/*
	 * waitq_set_deinit() remove the KQ's waitq set from
	 * any select sets to which it may belong.
	 */
	FUNC19(&kq->kq_wqs);
	FUNC12(&kq->kq_lock, kq_lck_grp);
	FUNC12(&kq->kq_reqlock, kq_lck_grp);

	if (kq->kq_state & KQ_WORKQ) {
		FUNC20(kqworkq_zone, (struct kqworkq *)kq);
	} else if (kq->kq_state & KQ_WORKLOOP) {
		struct kqworkloop *kqwl = (struct kqworkloop *)kq;

		FUNC3(kqwl->kqwl_retains == 0);
		FUNC11(&kqwl->kqwl_statelock, kq_lck_grp);
		FUNC20(kqworkloop_zone, kqwl);
	} else {
		FUNC20(kqfile_zone, (struct kqfile *)kq);
	}
}