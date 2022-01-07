
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_call_t ;
struct knote {int kn_sfflags; scalar_t__ kn_hook; int kn_hookid; int * kn_ext; } ;


 int NOTE_BACKGROUND ;
 int NOTE_CRITICAL ;
 int NOTE_LEEWAY ;
 int NOTE_MACH_CONTINUOUS_TIME ;
 unsigned int THREAD_CALL_CONTINUOUS ;
 unsigned int THREAD_CALL_DELAY_LEEWAY ;
 unsigned int THREAD_CALL_DELAY_USER_BACKGROUND ;
 unsigned int THREAD_CALL_DELAY_USER_CRITICAL ;
 unsigned int THREAD_CALL_DELAY_USER_NORMAL ;
 int TIMER_ARMED ;
 scalar_t__ TIMER_IDLE ;
 int assert (int) ;
 scalar_t__ os_atomic_load (int *,int ) ;
 int os_atomic_store (int *,int ,int ) ;
 int relaxed ;
 int thread_call_enter_delayed_with_leeway (int ,int *,int ,int ,unsigned int) ;

__attribute__((used)) static void
filt_timerarm(struct knote *kn)
{
 uint64_t deadline = kn->kn_ext[0];
 uint64_t leeway = kn->kn_ext[1];

 int filter_flags = kn->kn_sfflags;
 unsigned int timer_flags = 0;

 assert(os_atomic_load(&kn->kn_hookid, relaxed) == TIMER_IDLE);

 if (filter_flags & NOTE_CRITICAL)
  timer_flags |= THREAD_CALL_DELAY_USER_CRITICAL;
 else if (filter_flags & NOTE_BACKGROUND)
  timer_flags |= THREAD_CALL_DELAY_USER_BACKGROUND;
 else
  timer_flags |= THREAD_CALL_DELAY_USER_NORMAL;

 if (filter_flags & NOTE_LEEWAY)
  timer_flags |= THREAD_CALL_DELAY_LEEWAY;

 if (filter_flags & NOTE_MACH_CONTINUOUS_TIME)
  timer_flags |= THREAD_CALL_CONTINUOUS;

 os_atomic_store(&kn->kn_hookid, TIMER_ARMED, relaxed);
 thread_call_enter_delayed_with_leeway((thread_call_t)kn->kn_hook, ((void*)0),
   deadline, leeway, timer_flags);
}
