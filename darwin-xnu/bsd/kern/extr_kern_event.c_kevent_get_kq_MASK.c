#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  trp_value; } ;
typedef  TYPE_1__ workq_threadreq_param_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct proc {struct filedesc* p_fd; } ;
struct kqworkloop {int /*<<< orphan*/  kqwl_params; scalar_t__ kqwl_dynamicid; } ;
struct kqueue {int kq_state; } ;
struct fileproc {int dummy; } ;
struct filedesc {struct kqueue* fd_wqkqueue; } ;
typedef  scalar_t__ kqueue_id_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 unsigned int KEVENT_FLAG_DYNAMIC_KQUEUE ; 
 unsigned int KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST ; 
 unsigned int KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST ; 
 unsigned int KEVENT_FLAG_KERNEL ; 
 unsigned int KEVENT_FLAG_WORKLOOP ; 
 unsigned int KEVENT_FLAG_WORKQ ; 
 int /*<<< orphan*/  KQUEUE_MIGHT_BE_LAST_REF ; 
 int KQ_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct proc*,int,struct fileproc**,struct kqueue**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct kqueue* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kqueue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 
 struct kqueue* FUNC11 (struct proc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*,scalar_t__,struct kqueue*) ; 
 struct kqueue* FUNC15 (struct proc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct kqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kqueue*) ; 

__attribute__((used)) static int
FUNC18(struct proc *p, kqueue_id_t id, workq_threadreq_param_t *trp,
		unsigned int flags, struct fileproc **fpp, int *fdp,
		struct kqueue **kqp)
{
	struct filedesc *descp = p->p_fd;
	struct fileproc *fp = NULL;
	struct kqueue *kq = NULL;
	int fd = 0;
	int error = 0;
	thread_t th = FUNC1();

	FUNC0(!trp || (flags & KEVENT_FLAG_WORKLOOP));

	/* Was the workloop flag passed?  Then it is for sure only a workloop */
	if (flags & KEVENT_FLAG_DYNAMIC_KQUEUE) {
		FUNC0(flags & KEVENT_FLAG_WORKLOOP);
		FUNC0(!trp || (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST));
		kq = FUNC5(th);

		/*
		 * when kevent_id_internal is called from within the
		 * kernel, and the passed 'id' value is '-1' then we
		 * look for the currently bound workloop kq.
		 */
		if (id == (kqueue_id_t)-1 &&
		    (flags & KEVENT_FLAG_KERNEL) &&
		    (flags & KEVENT_FLAG_WORKLOOP)) {

			if (!FUNC4(th) || !kq) {
				return EINVAL;
			}

			FUNC17(kq);
			goto out;
		}

		if (id == 0 || id == (kqueue_id_t)-1) {
			return EINVAL;
		}

		/* try shortcut on kq lookup for bound threads */
		if (kq != NULL && ((struct kqworkloop *)kq)->kqwl_dynamicid == id) {

			if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST) {
				return EEXIST;
			}

			/* retain a reference while working with this kq. */
			FUNC0(kq->kq_state & KQ_DYNAMIC);
			FUNC17(kq);
			goto out;
		}

		/* look for the kq on the hash table */
		FUNC9(p);
		kq = FUNC15(p, id);
		if (kq == NULL) {
			FUNC10(p);

			if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST) {
				return ENOENT;
			}

			struct kqueue *alloc_kq;
			alloc_kq = FUNC11(p, flags);
			if (!alloc_kq) {
				return ENOMEM;
			}

			FUNC9(p);
			FUNC13(p);
			kq = FUNC15(p, id);
			if (kq == NULL) {
				/* insert our new one */
				kq = alloc_kq;
				if (trp) {
					struct kqworkloop *kqwl = (struct kqworkloop *)kq;
					kqwl->kqwl_params = trp->trp_value;
				}
				FUNC14(p, id, kq);
				FUNC10(p);
			} else if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST) {
				/* lost race and caller wants an error */
				FUNC10(p);
				FUNC16(alloc_kq, KQUEUE_MIGHT_BE_LAST_REF);
				FUNC12(alloc_kq);
				return EEXIST;
			} else {
				/* lost race, retain existing workloop */
				FUNC17(kq);
				FUNC10(p);
				FUNC16(alloc_kq, KQUEUE_MIGHT_BE_LAST_REF);
				FUNC12(alloc_kq);
			}
		} else {

			if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST) {
				FUNC10(p);
				return  EEXIST;
			}

			/* retain a reference while working with this kq. */
			FUNC0(kq->kq_state & KQ_DYNAMIC);
			FUNC17(kq);
			FUNC10(p);
		}

	} else if (flags & KEVENT_FLAG_WORKQ) {
		/* must already exist for bound threads. */
		if (flags & KEVENT_FLAG_KERNEL) {
			FUNC0(descp->fd_wqkqueue != NULL);
		}

		/*
		 * use the private kq associated with the proc workq.
		 * Just being a thread within the process (and not
		 * being the exit/exec thread) is enough to hold a
		 * reference on this special kq.
		 */
		kq = descp->fd_wqkqueue;
		if (kq == NULL) {
			struct kqueue *alloc_kq = FUNC11(p, KEVENT_FLAG_WORKQ);
			if (alloc_kq == NULL) {
				return ENOMEM;
			}

			FUNC7(p);
			if (descp->fd_wqkqueue == NULL) {
				kq = descp->fd_wqkqueue = alloc_kq;
				FUNC8(p);
			} else {
				FUNC8(p);
				kq = descp->fd_wqkqueue;
				FUNC12(alloc_kq);
			}
		}
	} else {
		/* get a usecount for the kq itself */
		fd = (int)id;
		if ((error = FUNC3(p, fd, &fp, &kq)) != 0)
			return (error);
	}
	if ((error = FUNC6(kq, flags)) != 0) {
		/* drop the usecount */
		if (fp != NULL)
			FUNC2(p, fd, fp, 0);
		return error;
	}

out:
	*fpp = fp;
	*fdp = fd;
	*kqp = kq;

	return error;
}