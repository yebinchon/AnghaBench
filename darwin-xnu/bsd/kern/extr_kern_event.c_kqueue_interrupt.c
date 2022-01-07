
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
struct kqueue {int kq_state; int kq_wqs; } ;
struct kqtailq {int dummy; } ;


 int CAST_EVENT64_T (struct kqtailq*) ;
 int KQ_EVENT ;
 int KQ_PROCESSING ;
 int KQ_PROCWAIT ;
 int KQ_SEL ;
 int KQ_SLEEP ;
 int KQ_WORKQ ;
 int THREAD_RESTART ;
 int WAITQ_ALL_PRIORITIES ;
 int assert (int) ;
 struct kqtailq* kqueue_get_suppressed_queue (struct kqueue*,int *) ;
 int waitq_wakeup64_all (struct waitq*,int ,int ,int ) ;

__attribute__((used)) static void
kqueue_interrupt(struct kqueue *kq)
{
 assert((kq->kq_state & KQ_WORKQ) == 0);


 if ((kq->kq_state & (KQ_SLEEP | KQ_SEL)) != 0) {
  kq->kq_state &= ~(KQ_SLEEP | KQ_SEL);
  (void)waitq_wakeup64_all((struct waitq *)&kq->kq_wqs,
                           KQ_EVENT,
                           THREAD_RESTART,
                           WAITQ_ALL_PRIORITIES);
 }


 if (kq->kq_state & KQ_PROCWAIT) {
  struct kqtailq *suppressq;

  assert(kq->kq_state & KQ_PROCESSING);

  kq->kq_state &= ~KQ_PROCWAIT;
  suppressq = kqueue_get_suppressed_queue(kq, ((void*)0));
  (void)waitq_wakeup64_all((struct waitq *)&kq->kq_wqs,
                           CAST_EVENT64_T(suppressq),
                           THREAD_RESTART,
                           WAITQ_ALL_PRIORITIES);
 }
}
