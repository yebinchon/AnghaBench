
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_cond_lock; int task_begin_bitmap; int task_begin; } ;
typedef TYPE_1__ taskset_t ;


 int bit_clear (int ,int) ;
 scalar_t__ bit_is_clear (int ,int) ;
 int hb_cond_wait (int ,int ) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

void
taskset_thread_wait4start( taskset_t *ts, int thr_idx )
{
    hb_lock( ts->task_cond_lock );
    while ( bit_is_clear( ts->task_begin_bitmap, thr_idx ) )
        hb_cond_wait( ts->task_begin, ts->task_cond_lock );





    bit_clear( ts->task_begin_bitmap, thr_idx );
    hb_unlock( ts->task_cond_lock );
}
