
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_timer {int tcall; } ;


 int EINVAL ;
 int ENOMEM ;
 int KP_MIN_PERIOD_BG_NS ;
 int KP_MIN_PERIOD_NS ;
 int KP_MIN_PERIOD_PET_BG_NS ;
 int KP_MIN_PERIOD_PET_NS ;
 unsigned int TIMER_MAX ;
 int VM_KERN_MEMORY_DIAG ;
 int assert (int) ;
 int bcopy (struct kperf_timer*,struct kperf_timer*,unsigned int) ;
 int bzero (struct kperf_timer*,unsigned int) ;
 struct kperf_timer* kalloc_tag (unsigned int,int ) ;
 int kfree (struct kperf_timer*,unsigned int) ;
 int kperf_init () ;
 int kperf_timer_handler ;
 int kperf_timer_stop () ;
 unsigned int kperf_timerc ;
 struct kperf_timer* kperf_timerv ;
 scalar_t__ min_period_abstime ;
 scalar_t__ min_period_bg_abstime ;
 scalar_t__ min_period_pet_abstime ;
 scalar_t__ min_period_pet_bg_abstime ;
 int nanoseconds_to_absolutetime (int ,scalar_t__*) ;
 int timer_call_setup (int *,int ,struct kperf_timer*) ;

extern int
kperf_timer_set_count(unsigned int count)
{
 struct kperf_timer *new_timerv = ((void*)0), *old_timerv = ((void*)0);
 unsigned int old_count;

 if (min_period_abstime == 0) {
  nanoseconds_to_absolutetime(KP_MIN_PERIOD_NS, &min_period_abstime);
  nanoseconds_to_absolutetime(KP_MIN_PERIOD_BG_NS, &min_period_bg_abstime);
  nanoseconds_to_absolutetime(KP_MIN_PERIOD_PET_NS, &min_period_pet_abstime);
  nanoseconds_to_absolutetime(KP_MIN_PERIOD_PET_BG_NS,
   &min_period_pet_bg_abstime);
  assert(min_period_abstime > 0);
 }

 if (count == kperf_timerc) {
  return 0;
 }
 if (count > TIMER_MAX) {
  return EINVAL;
 }


 if (count < kperf_timerc) {
  return EINVAL;
 }





 if (kperf_timerc == 0) {
  int r;


  if ((r = kperf_init())) {
   return r;
  }
 }





 kperf_timer_stop();


 new_timerv = kalloc_tag(count * sizeof(struct kperf_timer),
  VM_KERN_MEMORY_DIAG);
 if (new_timerv == ((void*)0)) {
  return ENOMEM;
 }
 old_timerv = kperf_timerv;
 old_count = kperf_timerc;

 if (old_timerv != ((void*)0)) {
  bcopy(kperf_timerv, new_timerv,
   kperf_timerc * sizeof(struct kperf_timer));
 }


 bzero(&(new_timerv[kperf_timerc]),
  (count - old_count) * sizeof(struct kperf_timer));


 for (unsigned int i = 0; i < count; i++) {
  timer_call_setup(&new_timerv[i].tcall, kperf_timer_handler, &new_timerv[i]);
 }

 kperf_timerv = new_timerv;
 kperf_timerc = count;

 if (old_timerv != ((void*)0)) {
  kfree(old_timerv, old_count * sizeof(struct kperf_timer));
 }

 return 0;
}
