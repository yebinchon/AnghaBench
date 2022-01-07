
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wait_result_t ;
typedef size_t uint32_t ;
typedef int event_t ;


 size_t MAX_COLLISION ;
 size_t MAX_COLLISION_COUNTS ;
 int NSEC_PER_USEC ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_TIMED_OUT ;
 int THREAD_UNINT ;
 scalar_t__ THREAD_WAITING ;
 int assert (int) ;
 scalar_t__ assert_wait_timeout (int ,int ,size_t,int ) ;
 size_t* collision_backoffs ;
 int * max_collision_count ;
 scalar_t__ thread_block (int ) ;

void
mutex_pause(uint32_t collisions)
{
 wait_result_t wait_result;
 uint32_t back_off;

 if (collisions >= MAX_COLLISION_COUNTS)
         collisions = MAX_COLLISION_COUNTS - 1;
 max_collision_count[collisions]++;

 if (collisions >= MAX_COLLISION)
         collisions = MAX_COLLISION - 1;
 back_off = collision_backoffs[collisions];

 wait_result = assert_wait_timeout((event_t)mutex_pause, THREAD_UNINT, back_off, NSEC_PER_USEC);
 assert(wait_result == THREAD_WAITING);

 wait_result = thread_block(THREAD_CONTINUE_NULL);
 assert(wait_result == THREAD_TIMED_OUT);
}
