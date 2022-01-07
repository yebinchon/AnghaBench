
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct knote {int kn_sfflags; int kn_hookid; } ;
struct kevent_internal_s {int fflags; int data; int flags; } ;
struct filt_timer_params {int dummy; } ;


 int EINVAL ;
 int EV_ERROR ;
 int FILTER_ACTIVE ;
 int FILTER_UPDATE_REQ_QOS ;
 int NOTE_ABSOLUTE ;
 int TIMER_IMMEDIATE ;
 scalar_t__ filt_timer_is_ready (struct knote*) ;
 int filt_timer_set_params (struct knote*,struct filt_timer_params*) ;
 int filt_timerarm (struct knote*) ;
 int filt_timercancel (struct knote*) ;
 int filt_timervalidate (struct kevent_internal_s*,struct filt_timer_params*) ;
 int os_atomic_store (int *,int ,int ) ;
 int relaxed ;

__attribute__((used)) static int
filt_timertouch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct filt_timer_params params;
 uint32_t changed_flags = (kn->kn_sfflags ^ kev->fflags);
 int error;

 if (changed_flags & NOTE_ABSOLUTE) {
  kev->flags |= EV_ERROR;
  kev->data = EINVAL;
  return 0;
 }

 if ((error = filt_timervalidate(kev, &params)) != 0) {
  kev->flags |= EV_ERROR;
  kev->data = error;
  return 0;
 }


 filt_timercancel(kn);
 filt_timer_set_params(kn, &params);
 kn->kn_sfflags = kev->fflags;

 if (filt_timer_is_ready(kn)) {
  os_atomic_store(&kn->kn_hookid, TIMER_IMMEDIATE, relaxed);
  return FILTER_ACTIVE | FILTER_UPDATE_REQ_QOS;
 } else {
  filt_timerarm(kn);
  return FILTER_UPDATE_REQ_QOS;
 }
}
