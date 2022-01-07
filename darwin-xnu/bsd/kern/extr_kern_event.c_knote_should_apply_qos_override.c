
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_qos_t ;
struct kqueue {int kq_state; } ;
struct knote {scalar_t__ kn_req_index; int kn_qos; int kn_status; scalar_t__ kn_qos_override; scalar_t__ kn_inuse; int kn_filtid; } ;
struct TYPE_2__ {int f_adjusts_qos; } ;


 int FILTER_ADJUST_EVENT_QOS_BIT ;
 int FILTER_ADJUST_EVENT_QOS_SHIFT ;
 int KN_LOCKED ;
 int KN_MERGE_QOS ;
 scalar_t__ KQWL_BUCKET_STAYACTIVE ;
 scalar_t__ KQWQ_QOS_MANAGER ;
 int KQ_WORKLOOP ;
 int KQ_WORKQ ;
 scalar_t__ THREAD_QOS_LAST ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int _PTHREAD_PRIORITY_FALLBACK_FLAG ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 TYPE_1__* knote_fops (struct knote*) ;
 int kqlock_held (struct kqueue*) ;
 int panic (char*,int ) ;

__attribute__((used)) static bool
knote_should_apply_qos_override(struct kqueue *kq, struct knote *kn, int result,
  thread_qos_t *qos_out)
{
 thread_qos_t qos_index = (result >> FILTER_ADJUST_EVENT_QOS_SHIFT) & 7;

 kqlock_held(kq);

 assert(result & FILTER_ADJUST_EVENT_QOS_BIT);
 assert(qos_index < THREAD_QOS_LAST);
 if (__improbable(!knote_fops(kn)->f_adjusts_qos)) {
  panic("filter %d cannot change QoS", kn->kn_filtid);
 } else if (kq->kq_state & KQ_WORKLOOP) {
  if (kn->kn_req_index == KQWL_BUCKET_STAYACTIVE) {
   return 0;
  }
 } else if (kq->kq_state & KQ_WORKQ) {
  if (kn->kn_req_index == KQWQ_QOS_MANAGER) {
   return 0;
  }
 } else {
  return 0;
 }





 if (kn->kn_qos & _PTHREAD_PRIORITY_FALLBACK_FLAG) {
  if (qos_index == THREAD_QOS_UNSPECIFIED)
   qos_index = kn->kn_req_index;
 } else {
  if (qos_index < kn->kn_req_index)
   qos_index = kn->kn_req_index;
 }
 if ((kn->kn_status & KN_MERGE_QOS) && (qos_index < kn->kn_qos_override)) {

  return 0;
 }

 if ((kn->kn_status & KN_LOCKED) && kn->kn_inuse) {
  kn->kn_status |= KN_MERGE_QOS;
 }

 if (kn->kn_qos_override == qos_index) {
  return 0;
 }

 *qos_out = qos_index;
 return 1;
}
