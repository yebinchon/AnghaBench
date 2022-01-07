
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc {struct filedesc* p_fd; } ;
struct kqueue {struct proc* kq_p; int kq_reqlock; int kq_lock; int kq_wqs; } ;
struct TYPE_4__ {int kqr_suppressed; int kqr_state; } ;
struct kqworkq {int kqwl_state; int kqwl_retains; int kqf_suppressed; int kqf_queue; struct kqueue kqf_kqueue; int kqwl_statelock; TYPE_2__ kqwl_request; int * kqwl_queue; struct kqueue kqwl_kqueue; TYPE_1__* kqwq_request; int * kqwq_queue; int kqwq_state; struct kqueue kqwq_kqueue; } ;
struct kqworkloop {int kqwl_state; int kqwl_retains; int kqf_suppressed; int kqf_queue; struct kqueue kqf_kqueue; int kqwl_statelock; TYPE_2__ kqwl_request; int * kqwl_queue; struct kqueue kqwl_kqueue; TYPE_1__* kqwq_request; int * kqwq_queue; int kqwq_state; struct kqueue kqwq_kqueue; } ;
struct kqfile {int kqwl_state; int kqwl_retains; int kqf_suppressed; int kqf_queue; struct kqueue kqf_kqueue; int kqwl_statelock; TYPE_2__ kqwl_request; int * kqwl_queue; struct kqueue kqwl_kqueue; TYPE_1__* kqwq_request; int * kqwq_queue; int kqwq_state; struct kqueue kqwq_kqueue; } ;
struct filedesc {scalar_t__ fd_knlistsize; } ;
struct TYPE_3__ {int kqr_qos_index; int kqr_suppressed; int kqr_state; } ;


 unsigned int KEVENT_FLAG_WORKLOOP ;
 unsigned int KEVENT_FLAG_WORKQ ;
 int KQR_THOVERCOMMIT ;
 int KQR_WORKLOOP ;
 int KQWL_NBUCKETS ;
 int KQWQ_NBUCKETS ;
 int KQWQ_QOS_MANAGER ;
 int KQ_DYNAMIC ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 int SYNC_POLICY_FIFO ;
 int SYNC_POLICY_PREPOST ;
 int TAILQ_INIT (int *) ;
 int bzero (struct kqworkq*,int) ;
 int kq_lck_attr ;
 int kq_lck_grp ;
 int kqfile_zone ;
 int kqworkloop_zone ;
 int kqworkq_zone ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_spin_init (int *,int ,int ) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int waitq_set_init (int *,int,int *,void*) ;
 scalar_t__ zalloc (int ) ;

struct kqueue *
kqueue_alloc(struct proc *p, unsigned int flags)
{
 struct filedesc *fdp = p->p_fd;
 struct kqueue *kq = ((void*)0);
 int policy;
 void *hook = ((void*)0);

 if (flags & KEVENT_FLAG_WORKQ) {
  struct kqworkq *kqwq;
  int i;

  kqwq = (struct kqworkq *)zalloc(kqworkq_zone);
  if (kqwq == ((void*)0))
   return ((void*)0);

  kq = &kqwq->kqwq_kqueue;
  bzero(kqwq, sizeof (struct kqworkq));

  kqwq->kqwq_state = KQ_WORKQ;

  for (i = 0; i < KQWQ_NBUCKETS; i++) {
   TAILQ_INIT(&kqwq->kqwq_queue[i]);
  }
  for (i = 0; i < KQWQ_NBUCKETS; i++) {
   if (i != KQWQ_QOS_MANAGER) {
    kqwq->kqwq_request[i].kqr_state |= KQR_THOVERCOMMIT;
   }
   kqwq->kqwq_request[i].kqr_qos_index = i;
   TAILQ_INIT(&kqwq->kqwq_request[i].kqr_suppressed);
  }

  policy = SYNC_POLICY_FIFO;
  hook = (void *)kqwq;
 } else if (flags & KEVENT_FLAG_WORKLOOP) {
  struct kqworkloop *kqwl;
  int i;

  kqwl = (struct kqworkloop *)zalloc(kqworkloop_zone);
  if (kqwl == ((void*)0))
   return ((void*)0);

  bzero(kqwl, sizeof (struct kqworkloop));

  kqwl->kqwl_state = KQ_WORKLOOP | KQ_DYNAMIC;
  kqwl->kqwl_retains = 1;
  kqwl->kqwl_request.kqr_state = KQR_WORKLOOP;

  kq = &kqwl->kqwl_kqueue;
  for (i = 0; i < KQWL_NBUCKETS; i++) {
   TAILQ_INIT(&kqwl->kqwl_queue[i]);
  }
  TAILQ_INIT(&kqwl->kqwl_request.kqr_suppressed);

  lck_mtx_init(&kqwl->kqwl_statelock, kq_lck_grp, kq_lck_attr);

  policy = SYNC_POLICY_FIFO;
  hook = (void *)kqwl;
 } else {
  struct kqfile *kqf;

  kqf = (struct kqfile *)zalloc(kqfile_zone);
  if (kqf == ((void*)0))
   return ((void*)0);

  kq = &kqf->kqf_kqueue;
  bzero(kqf, sizeof (struct kqfile));
  TAILQ_INIT(&kqf->kqf_queue);
  TAILQ_INIT(&kqf->kqf_suppressed);

  policy = SYNC_POLICY_FIFO | SYNC_POLICY_PREPOST;
 }

 waitq_set_init(&kq->kq_wqs, policy, ((void*)0), hook);
 lck_spin_init(&kq->kq_lock, kq_lck_grp, kq_lck_attr);
 lck_spin_init(&kq->kq_reqlock, kq_lck_grp, kq_lck_attr);
 kq->kq_p = p;

 if (fdp->fd_knlistsize < 0) {
  proc_fdlock(p);
  if (fdp->fd_knlistsize < 0)
   fdp->fd_knlistsize = 0;
  proc_fdunlock(p);
 }

 return (kq);
}
