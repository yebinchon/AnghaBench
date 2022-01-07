
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;
struct knote {int kn_sfflags; int kn_status; } ;


 int KN_DISPATCH ;
 int MACH_RCV_MSG ;
 struct turnstile* TURNSTILE_NULL ;
 int knote_get_kq (struct knote*) ;
 struct turnstile* kqueue_turnstile (int ) ;

struct turnstile *
filt_machport_kqueue_turnstile(struct knote *kn)
{
 if ((kn->kn_sfflags & MACH_RCV_MSG) && (kn->kn_status & KN_DISPATCH)) {
  return kqueue_turnstile(knote_get_kq(kn));
 }
 return TURNSTILE_NULL;
}
