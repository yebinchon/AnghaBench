
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int turnstile_update_flags_t ;
typedef int turnstile_inheritor_t ;
struct turnstile {int dummy; } ;
struct kqrequest {int kqr_thread; } ;
struct kqworkloop {int kqwl_owner; struct kqrequest kqwl_request; } ;


 int TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INHERITOR_THREAD ;
 int assert (int) ;
 int filt_wlturnstile_interlock_is_workq (struct kqworkloop*) ;
 int turnstile_update_inheritor (struct turnstile*,int ,int ) ;

__attribute__((used)) static void
filt_wlupdate_inheritor(struct kqworkloop *kqwl, struct turnstile *ts,
  turnstile_update_flags_t flags)
{
 turnstile_inheritor_t inheritor = TURNSTILE_INHERITOR_NULL;
 struct kqrequest *kqr = &kqwl->kqwl_request;





 assert(!filt_wlturnstile_interlock_is_workq(kqwl));

 if ((inheritor = kqwl->kqwl_owner)) {
  flags |= TURNSTILE_INHERITOR_THREAD;
 } else if ((inheritor = kqr->kqr_thread)) {
  flags |= TURNSTILE_INHERITOR_THREAD;
 }

 turnstile_update_inheritor(ts, inheritor, flags);
}
