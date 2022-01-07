
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_qos_t ;
struct uthread {int uu_kqueue_override; struct kqrequest* uu_kqr_bound; } ;
struct kqrequest {int kqr_state; int * kqr_thread; } ;
struct kqworkloop {scalar_t__ kqwl_turnstile; int * kqwl_owner; int kqwl_dynamicid; struct kqrequest kqwl_request; } ;
typedef int kq_index_t ;


 int BSD_KEVENT_KQWL_UNBIND ;
 int KDBG_FILTERED (int ,int ,int ,int ,int ) ;
 int KEV_EVTID (int ) ;
 int KQR_R2K_NOTIF_ARMED ;
 int KQR_THREQUESTED ;
 int THREAD_QOS_UNSPECIFIED ;
 int TURNSTILE_IMMEDIATE_UPDATE ;
 int TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INTERLOCK_HELD ;
 int assert (int) ;
 struct uthread* get_bsdthread_info (int ) ;
 int kq_req_held (struct kqworkloop*) ;
 int thread_tid (int ) ;
 int turnstile_update_inheritor (scalar_t__,int ,int ) ;
 int turnstile_update_inheritor_complete (scalar_t__,int ) ;

__attribute__((used)) static thread_qos_t
kqworkloop_unbind_locked(struct kqworkloop *kqwl, thread_t thread)
{
 struct uthread *ut = get_bsdthread_info(thread);
 struct kqrequest *kqr = &kqwl->kqwl_request;
 kq_index_t ipc_override = ut->uu_kqueue_override;

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KQWL_UNBIND), kqwl->kqwl_dynamicid,
   thread_tid(thread), 0, 0);

 kq_req_held(kqwl);
 assert(ut->uu_kqr_bound == kqr);
 ut->uu_kqr_bound = ((void*)0);
 ut->uu_kqueue_override = THREAD_QOS_UNSPECIFIED;

 if (kqwl->kqwl_owner == ((void*)0) && kqwl->kqwl_turnstile) {
  turnstile_update_inheritor(kqwl->kqwl_turnstile,
    TURNSTILE_INHERITOR_NULL, TURNSTILE_IMMEDIATE_UPDATE);
  turnstile_update_inheritor_complete(kqwl->kqwl_turnstile,
    TURNSTILE_INTERLOCK_HELD);
 }

 kqr->kqr_thread = ((void*)0);
 kqr->kqr_state &= ~(KQR_THREQUESTED | KQR_R2K_NOTIF_ARMED);
 return ipc_override;
}
