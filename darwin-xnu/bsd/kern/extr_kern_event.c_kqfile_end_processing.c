
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
struct kqueue {int kq_state; int kq_wqs; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; } ;


 int BSD_KEVENT_KQ_PROCESS_END ;
 int CAST_EVENT64_T (struct kqtailq*) ;
 int KDBG_FILTERED (int ,int ,int ) ;
 int KEV_EVTID (int ) ;
 int KN_SUPPRESSED ;
 int KQ_PROCESSING ;
 int KQ_PROCWAIT ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 struct knote* TAILQ_FIRST (struct kqtailq*) ;
 int THREAD_AWAKENED ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct kqueue*) ;
 int WAITQ_ALL_PRIORITIES ;
 int assert (int) ;
 int knote_unsuppress (struct knote*) ;
 int kqlock_held (struct kqueue*) ;
 struct kqtailq* kqueue_get_suppressed_queue (struct kqueue*,int *) ;
 int waitq_wakeup64_all (struct waitq*,int ,int ,int ) ;

__attribute__((used)) static void
kqfile_end_processing(struct kqueue *kq)
{
 struct knote *kn;
 struct kqtailq *suppressq;
 int procwait;

 kqlock_held(kq);

 assert((kq->kq_state & (KQ_WORKQ|KQ_WORKLOOP)) == 0);

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQ_PROCESS_END),
   VM_KERNEL_UNSLIDE_OR_PERM(kq), 0);




 suppressq = kqueue_get_suppressed_queue(kq, ((void*)0));
 while ((kn = TAILQ_FIRST(suppressq)) != ((void*)0)) {
  assert(kn->kn_status & KN_SUPPRESSED);
  knote_unsuppress(kn);
 }

 procwait = (kq->kq_state & KQ_PROCWAIT);
 kq->kq_state &= ~(KQ_PROCESSING | KQ_PROCWAIT);

 if (procwait) {

  waitq_wakeup64_all((struct waitq *)&kq->kq_wqs,
                     CAST_EVENT64_T(suppressq),
                     THREAD_AWAKENED,
                     WAITQ_ALL_PRIORITIES);
 }
}
