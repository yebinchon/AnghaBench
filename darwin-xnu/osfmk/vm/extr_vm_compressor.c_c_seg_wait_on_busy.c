
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int event_t ;
typedef TYPE_1__* c_segment_t ;
struct TYPE_3__ {int c_wanted; int c_lock; } ;


 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int assert_wait (int ,int ) ;
 int lck_mtx_unlock_always (int *) ;
 int thread_block (int ) ;

void
c_seg_wait_on_busy(c_segment_t c_seg)
{
 c_seg->c_wanted = 1;
 assert_wait((event_t) (c_seg), THREAD_UNINT);

 lck_mtx_unlock_always(&c_seg->c_lock);
 thread_block(THREAD_CONTINUE_NULL);
}
