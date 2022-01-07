
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int thread_continue_t ;
struct jetsam_thread_state {int memorystatus_wakeup; } ;


 int NSEC_PER_MSEC ;
 int THREAD_UNINT ;
 int assert_wait (int *,int ) ;
 int assert_wait_timeout (int *,int ,scalar_t__,int ) ;
 struct jetsam_thread_state* jetsam_current_thread () ;
 int thread_block (int ) ;

__attribute__((used)) static int
memorystatus_thread_block(uint32_t interval_ms, thread_continue_t continuation)
{
 struct jetsam_thread_state *jetsam_thread = jetsam_current_thread();

 if (interval_ms) {
  assert_wait_timeout(&jetsam_thread->memorystatus_wakeup, THREAD_UNINT, interval_ms, NSEC_PER_MSEC);
 } else {
  assert_wait(&jetsam_thread->memorystatus_wakeup, THREAD_UNINT);
 }

 return thread_block(continuation);
}
