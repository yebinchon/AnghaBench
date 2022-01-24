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
typedef  int uint16_t ;
typedef  size_t u_int ;
struct proc {struct filedesc* p_fd; } ;
struct kqueue {int kq_state; } ;
struct knote_lock_ctx {int dummy; } ;
struct knote {size_t kn_id; } ;
struct klist {int dummy; } ;
struct filedesc {int /*<<< orphan*/  fd_knhashmask; struct klist* fd_knhash; struct klist* fd_knlist; scalar_t__ fd_knlistsize; } ;
struct TYPE_2__ {int f_isfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  KNOTE_KQ_UNLOCK ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int KQ_DYNAMIC ; 
 int /*<<< orphan*/  FUNC1 (struct klist*,struct knote*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  kn_link ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  knote ; 
 TYPE_1__* FUNC5 (struct knote*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*,struct knote*,struct knote_lock_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*,struct kqueue*) ; 
 int /*<<< orphan*/  FUNC9 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*) ; 

__attribute__((used)) static void
FUNC12(struct kqueue *kq, struct knote *kn, struct proc *p,
		struct knote_lock_ctx *knlc)
{
	struct filedesc *fdp = p->p_fd;
	struct klist *list = NULL;
	uint16_t kq_state;
	bool is_fd;

	is_fd = FUNC5(kn)->f_isfd;

	if (is_fd)
		FUNC10(p);
	else
		FUNC3(p);

	if (is_fd) {
		FUNC2 ((u_int)fdp->fd_knlistsize > kn->kn_id);
		list = &fdp->fd_knlist[kn->kn_id];
	} else {
		list = &fdp->fd_knhash[FUNC0(kn->kn_id, fdp->fd_knhashmask)];
	}
	FUNC1(list, kn, knote, kn_link);

	FUNC7(kq);
	kq_state = kq->kq_state;
	if (knlc) {
		FUNC6(kq, kn, knlc, KNOTE_KQ_UNLOCK);
	} else {
		FUNC9(kq);
	}
	if (is_fd)
		FUNC11(p);
	else
		FUNC4(p);

	if (kq_state & KQ_DYNAMIC)
		FUNC8(p, kq);
}