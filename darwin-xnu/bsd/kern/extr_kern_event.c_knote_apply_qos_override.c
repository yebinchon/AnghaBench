
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; } ;
struct knote {int kn_status; void* kn_qos_index; void* kn_qos_override; } ;
typedef void* kq_index_t ;


 int KN_QUEUED ;
 int KN_SUPPRESSED ;
 int KQ_WORKQ ;
 int assert (int) ;
 struct kqueue* knote_get_kq (struct knote*) ;
 int kqworkloop_update_override (struct kqworkloop*,void*) ;
 int kqworkq_update_override (struct kqworkq*,struct knote*,void*) ;

__attribute__((used)) static void
knote_apply_qos_override(struct knote *kn, kq_index_t qos_index)
{
 assert((kn->kn_status & KN_QUEUED) == 0);

 kn->kn_qos_override = qos_index;

 if (kn->kn_status & KN_SUPPRESSED) {
  struct kqueue *kq = knote_get_kq(kn);
  if (kq->kq_state & KQ_WORKQ) {
   kqworkq_update_override((struct kqworkq *)kq, kn, qos_index);
  } else {
   kqworkloop_update_override((struct kqworkloop *)kq, qos_index);
  }
 } else {
  kn->kn_qos_index = qos_index;
 }
}
