
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_cond_lock; scalar_t__ thread_count; int task_complete_bitmap; int task_complete; int bitmap_elements; int task_begin; int task_begin_bitmap; } ;
typedef TYPE_1__ taskset_t ;


 int allbits_set (int ,int ) ;
 int bit_nclear (int ,int ,scalar_t__) ;
 int bit_nset (int ,int ,scalar_t__) ;
 int hb_cond_broadcast (int ) ;
 int hb_cond_wait (int ,int ) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

void
taskset_cycle( taskset_t *ts )
{
    hb_lock( ts->task_cond_lock );




    bit_nset( ts->task_begin_bitmap, 0, ts->thread_count - 1 );
    hb_cond_broadcast( ts->task_begin );






    do
    {
        hb_cond_wait( ts->task_complete, ts->task_cond_lock );
    } while ( !allbits_set( ts->task_complete_bitmap, ts->bitmap_elements ) );




    bit_nclear( ts->task_complete_bitmap, 0, ts->thread_count - 1 );

    hb_unlock( ts->task_cond_lock );
}
