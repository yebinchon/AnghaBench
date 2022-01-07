
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_count; int * task_stop_bitmap; int * task_complete_bitmap; int * task_begin_bitmap; int * task_threads_args; int * task_threads; int task_complete; int task_begin; int task_cond_lock; } ;
typedef TYPE_1__ taskset_t ;


 int bit_nset (int *,int ,int) ;
 int free (int *) ;
 int hb_cond_broadcast (int ) ;
 int hb_cond_close (int *) ;
 int hb_cond_wait (int ,int ) ;
 int hb_lock (int ) ;
 int hb_lock_close (int *) ;
 int hb_thread_close (int *) ;
 int hb_unlock (int ) ;

void
taskset_fini( taskset_t *ts )
{
    int i;

    hb_lock( ts->task_cond_lock );



    bit_nset( ts->task_stop_bitmap, 0, ts->thread_count - 1 );
    bit_nset( ts->task_begin_bitmap, 0, ts->thread_count - 1 );
    hb_cond_broadcast( ts->task_begin );




    hb_cond_wait( ts->task_complete, ts->task_cond_lock );
    hb_unlock( ts->task_cond_lock );




    for( i = 0; i < ts->thread_count; i++)
    {
        hb_thread_close( &ts->task_threads[i] );
    }
    hb_lock_close( &ts->task_cond_lock );
    hb_cond_close( &ts->task_begin );
    hb_cond_close( &ts->task_complete );
    free( ts->task_threads );
    if( ts->task_threads_args != ((void*)0) )
        free( ts->task_threads_args );
    free( ts->task_begin_bitmap );
    free( ts->task_complete_bitmap );
    free( ts->task_stop_bitmap );
}
