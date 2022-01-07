
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqrequest {int kqr_state; int kqr_thread; } ;
struct kqworkloop {struct kqrequest kqwl_request; } ;


 int AST_KEVENT_RETURN_TO_KERNEL ;
 int KQR_R2K_NOTIF_ARMED ;
 int act_set_astkevent (int ,int ) ;
 int assert (int ) ;
 int kq_req_held (struct kqworkloop*) ;

__attribute__((used)) static inline void
kqworkloop_request_fire_r2k_notification(struct kqworkloop *kqwl)
{
 struct kqrequest *kqr = &kqwl->kqwl_request;

 kq_req_held(kqwl);

 if (kqr->kqr_state & KQR_R2K_NOTIF_ARMED) {
  assert(kqr->kqr_thread);
  kqr->kqr_state &= ~KQR_R2K_NOTIF_ARMED;
  act_set_astkevent(kqr->kqr_thread, AST_KEVENT_RETURN_TO_KERNEL);
 }
}
