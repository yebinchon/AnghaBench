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
struct proc {struct filedesc* p_fd; } ;
struct kqworkloop {int /*<<< orphan*/  kqwl_dynamicid; } ;
struct kqueue {int kq_state; } ;
struct kqlist {int dummy; } ;
struct filedesc {int /*<<< orphan*/  fd_kqhashmask; struct kqlist* fd_kqhash; } ;

/* Variables and functions */
 int KQ_DYNAMIC ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KQ_WORKLOOP ; 
 int /*<<< orphan*/  FUNC1 (struct kqlist*,struct kqworkloop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  kqwl_hashlink ; 
 int /*<<< orphan*/  kqworkloop ; 

__attribute__((used)) static void
FUNC4(
	struct proc *p,
	struct kqueue *kq)
{
	struct kqworkloop *kqwl = (struct kqworkloop *)kq;
	struct filedesc *fdp = p->p_fd;
	struct kqlist *list;

	/* should hold the kq hash lock */
	FUNC3(p);

	if ((kq->kq_state & KQ_DYNAMIC) == 0) {
		FUNC2(kq->kq_state & KQ_DYNAMIC);
		return;
	}
	FUNC2(kq->kq_state & KQ_WORKLOOP); /* for now */
	list = &fdp->fd_kqhash[FUNC0(kqwl->kqwl_dynamicid, fdp->fd_kqhashmask)];
	FUNC1(list, kqwl, kqworkloop, kqwl_hashlink);
}