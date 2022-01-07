
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waitq {int dummy; } ;
struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; int kq_wqs; } ;
struct TYPE_2__ {int si_note; } ;
struct kqfile {TYPE_1__ kqf_sel; } ;
struct knote {int kn_qos_index; } ;


 int KNOTE (int *,int ) ;
 int KQ_EVENT ;
 int KQ_PROCESSING ;
 int KQ_SEL ;
 int KQ_SLEEP ;
 int KQ_WAKEUP ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 int THREAD_AWAKENED ;
 int WAITQ_ALL_PRIORITIES ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int kqlock_held (struct kqueue*) ;
 int kqworkloop_is_processing_on_current_thread (struct kqworkloop*) ;
 int kqworkloop_request_help (struct kqworkloop*,int ) ;
 int kqworkq_request_help (struct kqworkq*,int ) ;
 int waitq_wakeup64_all (struct waitq*,int ,int ,int ) ;

__attribute__((used)) static void
knote_wakeup(struct knote *kn)
{
 struct kqueue *kq = knote_get_kq(kn);

 kqlock_held(kq);

 if (kq->kq_state & KQ_WORKQ) {
  struct kqworkq *kqwq = (struct kqworkq *)kq;

  kqworkq_request_help(kqwq, kn->kn_qos_index);
 } else if (kq->kq_state & KQ_WORKLOOP) {
  struct kqworkloop *kqwl = (struct kqworkloop *)kq;





  if (!kqworkloop_is_processing_on_current_thread(kqwl)) {
   kqworkloop_request_help(kqwl, kn->kn_qos_index);
  }
 } else {
  struct kqfile *kqf = (struct kqfile *)kq;


  if (kq->kq_state & KQ_PROCESSING)
   kq->kq_state |= KQ_WAKEUP;


  if (kq->kq_state & (KQ_SLEEP | KQ_SEL)) {
   kq->kq_state &= ~(KQ_SLEEP | KQ_SEL);
   waitq_wakeup64_all((struct waitq *)&kq->kq_wqs, KQ_EVENT,
     THREAD_AWAKENED, WAITQ_ALL_PRIORITIES);
  }


  KNOTE(&kqf->kqf_sel.si_note, 0);
 }
}
