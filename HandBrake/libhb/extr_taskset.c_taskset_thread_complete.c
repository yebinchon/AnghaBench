
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_cond_lock; int task_complete; int bitmap_elements; int task_complete_bitmap; } ;
typedef TYPE_1__ taskset_t ;


 scalar_t__ allbits_set (int ,int ) ;
 int bit_set (int ,int) ;
 int hb_cond_signal (int ) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

void
taskset_thread_complete( taskset_t *ts, int thr_idx )
{
    hb_lock( ts->task_cond_lock );
    bit_set( ts->task_complete_bitmap, thr_idx );
    if( allbits_set( ts->task_complete_bitmap, ts->bitmap_elements ) )
    {
        hb_cond_signal( ts->task_complete );
    }
    hb_unlock( ts->task_cond_lock );
}
