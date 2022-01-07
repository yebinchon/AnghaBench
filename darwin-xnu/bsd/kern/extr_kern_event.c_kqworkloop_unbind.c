
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
struct kqrequest {scalar_t__ kqr_thread; int kqr_suppressed; } ;
struct kqueue {int kq_state; } ;
struct kqworkloop {struct kqrequest kqwl_request; struct kqueue kqwl_kqueue; } ;
typedef int proc_t ;
typedef scalar_t__ kq_index_t ;


 int KQWL_UTQ_PARKING ;
 int KQ_PROCESSING ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 scalar_t__ current_thread () ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 int kqlock (struct kqworkloop*) ;
 int kqueue_release_last (int ,struct kqworkloop*) ;
 int kqunlock (struct kqworkloop*) ;
 scalar_t__ kqworkloop_acknowledge_events (struct kqworkloop*) ;
 scalar_t__ kqworkloop_unbind_locked (struct kqworkloop*,scalar_t__) ;
 int kqworkloop_update_threads_qos (struct kqworkloop*,int,scalar_t__) ;
 int thread_drop_ipc_override (scalar_t__) ;

__attribute__((used)) static void
kqworkloop_unbind(proc_t p, struct kqworkloop *kqwl)
{
 struct kqueue *kq = &kqwl->kqwl_kqueue;
 struct kqrequest *kqr = &kqwl->kqwl_request;
 thread_t thread = kqr->kqr_thread;
 int op = KQWL_UTQ_PARKING;
 kq_index_t ipc_override, qos_override = THREAD_QOS_UNSPECIFIED;

 assert(thread == current_thread());

 kqlock(kqwl);






 assert((kq->kq_state & KQ_PROCESSING) == 0);
 if (!TAILQ_EMPTY(&kqr->kqr_suppressed)) {
  kq->kq_state |= KQ_PROCESSING;
  qos_override = kqworkloop_acknowledge_events(kqwl);
  kq->kq_state &= ~KQ_PROCESSING;
 }

 kq_req_lock(kqwl);

 ipc_override = kqworkloop_unbind_locked(kqwl, thread);
 kqworkloop_update_threads_qos(kqwl, op, qos_override);

 kq_req_unlock(kqwl);

 kqunlock(kqwl);





 if (ipc_override) {
  thread_drop_ipc_override(thread);
 }


 kqueue_release_last(p, kqwl);
}
