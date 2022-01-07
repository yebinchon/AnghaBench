
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int dummy; } ;
struct kqrequest {scalar_t__ kqr_override_index; scalar_t__ kqr_thread; int kqr_qos_index; } ;
struct knote {scalar_t__ kn_qos_index; } ;
typedef scalar_t__ kq_index_t ;


 scalar_t__ MAX (int ,scalar_t__) ;
 int kq_req_lock (struct kqworkq*) ;
 int kq_req_unlock (struct kqworkq*) ;
 struct kqrequest* kqworkq_get_request (struct kqworkq*,scalar_t__) ;
 int thread_add_ipc_override (scalar_t__,scalar_t__) ;
 int thread_update_ipc_override (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
kqworkq_update_override(struct kqworkq *kqwq, struct knote *kn,
  kq_index_t override_index)
{
 struct kqrequest *kqr;
 kq_index_t old_override_index;
 kq_index_t queue_index = kn->kn_qos_index;

 if (override_index <= queue_index) {
  return;
 }

 kqr = kqworkq_get_request(kqwq, queue_index);

 kq_req_lock(kqwq);
 old_override_index = kqr->kqr_override_index;
 if (override_index > MAX(kqr->kqr_qos_index, old_override_index)) {
  kqr->kqr_override_index = override_index;


  if (kqr->kqr_thread) {
   if (old_override_index)
    thread_update_ipc_override(kqr->kqr_thread, override_index);
   else
    thread_add_ipc_override(kqr->kqr_thread, override_index);
  }
 }
 kq_req_unlock(kqwq);
}
