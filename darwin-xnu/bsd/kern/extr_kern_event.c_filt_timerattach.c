
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * thread_call_t ;
typedef int thread_call_param_t ;
struct knote {int kn_sfflags; int kn_hookid; int kn_flags; int * kn_hook; } ;
struct kevent_internal_s {int dummy; } ;
struct filt_timer_params {int dummy; } ;


 int ENOMEM ;
 int EV_CLEAR ;
 int EV_ONESHOT ;
 int FILTER_ACTIVE ;
 int NOTE_ABSOLUTE ;
 int THREAD_CALL_OPTIONS_ONCE ;
 int THREAD_CALL_PRIORITY_HIGH ;
 int TIMER_IDLE ;
 int TIMER_IMMEDIATE ;
 scalar_t__ filt_timer_is_ready (struct knote*) ;
 int filt_timer_set_params (struct knote*,struct filt_timer_params*) ;
 int filt_timerarm (struct knote*) ;
 int filt_timerexpire ;
 int filt_timervalidate (struct kevent_internal_s*,struct filt_timer_params*) ;
 int knote_set_error (struct knote*,int) ;
 int os_atomic_store (int *,int ,int ) ;
 int relaxed ;
 int * thread_call_allocate_with_options (int ,int ,int ,int ) ;

__attribute__((used)) static int
filt_timerattach(struct knote *kn, struct kevent_internal_s *kev)
{
 thread_call_t callout;
 struct filt_timer_params params;
 int error;

 if ((error = filt_timervalidate(kev, &params)) != 0) {
  knote_set_error(kn, error);
  return 0;
 }

 callout = thread_call_allocate_with_options(filt_timerexpire,
                 (thread_call_param_t)kn, THREAD_CALL_PRIORITY_HIGH,
                 THREAD_CALL_OPTIONS_ONCE);

 if (((void*)0) == callout) {
  knote_set_error(kn, ENOMEM);
  return 0;
 }

 filt_timer_set_params(kn, &params);
 kn->kn_hook = callout;
 kn->kn_flags |= EV_CLEAR;
 os_atomic_store(&kn->kn_hookid, TIMER_IDLE, relaxed);


 if (kn->kn_sfflags & NOTE_ABSOLUTE)
  kn->kn_flags |= EV_ONESHOT;

 if (filt_timer_is_ready(kn)) {
  os_atomic_store(&kn->kn_hookid, TIMER_IMMEDIATE, relaxed);
  return FILTER_ACTIVE;
 } else {
  filt_timerarm(kn);
  return 0;
 }
}
