
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct TYPE_3__ {scalar_t__ uu_throttle_bc; } ;


 int THROTTLE_LEVEL_TIER3 ;
 int assert (int ) ;
 int timer_get_user_idle_level () ;

__attribute__((used)) static int
throttle_get_thread_throttle_level_internal(uthread_t ut, int io_tier) {
 int thread_throttle_level = io_tier;
 int user_idle_level;

 assert(ut != ((void*)0));


 if (ut->uu_throttle_bc)
  thread_throttle_level = THROTTLE_LEVEL_TIER3;
 if (thread_throttle_level >= THROTTLE_LEVEL_TIER3) {
  user_idle_level = timer_get_user_idle_level();
  if (user_idle_level > 0) {
   thread_throttle_level--;
  }
 }

 return (thread_throttle_level);
}
