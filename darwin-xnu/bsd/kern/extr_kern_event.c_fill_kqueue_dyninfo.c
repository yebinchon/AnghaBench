
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trp_flags; int trp_cpupercent; int trp_pol; int trp_pri; int trp_value; } ;
typedef TYPE_1__ workq_threadreq_param_t ;
struct kqrequest {int kqr_dsync_waiters; int kqr_override_index; int kqr_qos_index; int kqr_state; int kqr_thread; } ;
struct kqworkloop {int kqwl_params; int kqwl_owner; struct kqrequest kqwl_request; } ;
struct kqueue_dyninfo {int kqdi_cpupercent; int kqdi_pol; int kqdi_pri; scalar_t__ kqdi_sync_waiter_qos; int kqdi_sync_waiters; int kqdi_events_qos; int kqdi_async_qos; int kqdi_request_state; void* kqdi_owner; void* kqdi_servicer; int kqdi_info; } ;
struct kqueue {int kq_state; } ;


 int EINVAL ;
 int KQ_WORKLOOP ;
 int TRP_CPUPERCENT ;
 int TRP_POLICY ;
 int TRP_PRIORITY ;
 int fill_kqueueinfo (struct kqueue*,int *) ;
 int kq_req_lock (struct kqworkloop*) ;
 int kq_req_unlock (struct kqworkloop*) ;
 void* thread_tid (int ) ;

__attribute__((used)) static int
fill_kqueue_dyninfo(struct kqueue *kq, struct kqueue_dyninfo *kqdi)
{
 struct kqworkloop *kqwl = (struct kqworkloop *)kq;
 struct kqrequest *kqr = &kqwl->kqwl_request;
 workq_threadreq_param_t trp = {};
 int err;

 if ((kq->kq_state & KQ_WORKLOOP) == 0) {
  return EINVAL;
 }

 if ((err = fill_kqueueinfo(kq, &kqdi->kqdi_info))) {
  return err;
 }

 kq_req_lock(kqwl);

 kqdi->kqdi_servicer = thread_tid(kqr->kqr_thread);
 kqdi->kqdi_owner = thread_tid(kqwl->kqwl_owner);
 kqdi->kqdi_request_state = kqr->kqr_state;
 kqdi->kqdi_async_qos = kqr->kqr_qos_index;
 kqdi->kqdi_events_qos = kqr->kqr_override_index;
 kqdi->kqdi_sync_waiters = kqr->kqr_dsync_waiters;
 kqdi->kqdi_sync_waiter_qos = 0;

 trp.trp_value = kqwl->kqwl_params;
 if (trp.trp_flags & TRP_PRIORITY)
  kqdi->kqdi_pri = trp.trp_pri;
 else
  kqdi->kqdi_pri = 0;

 if (trp.trp_flags & TRP_POLICY)
  kqdi->kqdi_pol = trp.trp_pol;
 else
  kqdi->kqdi_pol = 0;

 if (trp.trp_flags & TRP_CPUPERCENT)
  kqdi->kqdi_cpupercent = trp.trp_cpupercent;
 else
  kqdi->kqdi_cpupercent = 0;

 kq_req_unlock(kqwl);

 return 0;
}
