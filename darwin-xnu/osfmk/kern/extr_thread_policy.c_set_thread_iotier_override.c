
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int iotier_override; int uthread; } ;


 int MIN (int,int) ;
 int OSCompareAndSwap (int,int,int*) ;
 int THROTTLE_LEVEL_NONE ;
 int rethrottle_thread (int ) ;

void set_thread_iotier_override(thread_t thread, int policy)
{
 int current_override;


 do {
  current_override = thread->iotier_override;

  if (current_override != THROTTLE_LEVEL_NONE)
   policy = MIN(current_override, policy);

  if (current_override == policy) {

   return;
  }
 } while (!OSCompareAndSwap(current_override, policy, &thread->iotier_override));






 rethrottle_thread(thread->uthread);
}
