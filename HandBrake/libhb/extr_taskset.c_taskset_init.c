
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int thread_count; size_t arg_size; int bitmap_elements; struct TYPE_6__* task_threads; struct TYPE_6__* task_threads_args; struct TYPE_6__* task_begin_bitmap; struct TYPE_6__* task_complete_bitmap; struct TYPE_6__* task_stop_bitmap; int * task_cond_lock; int * task_begin; int * task_complete; } ;
typedef TYPE_1__ taskset_t ;
typedef int hb_thread_t ;


 int bit_nclear (TYPE_1__*,int ,int) ;
 int free (TYPE_1__*) ;
 int hb_cond_close (int **) ;
 void* hb_cond_init () ;
 int hb_lock_close (int **) ;
 int * hb_lock_init () ;
 void* malloc (int) ;
 int memset (TYPE_1__*,int,int) ;

int
taskset_init( taskset_t *ts, int thread_count, size_t arg_size )
{
    int init_step;

    init_step = 0;
    memset( ts, 0, sizeof( *ts ) );
    ts->thread_count = thread_count;
    ts->arg_size = arg_size;
    ts->bitmap_elements = ( ts->thread_count + 31 ) / 32;
    ts->task_threads = malloc( sizeof( hb_thread_t* ) * ts->thread_count );
    if( ts->task_threads == ((void*)0) )
        goto fail;
    init_step++;

    if( arg_size != 0 )
    {
        ts->task_threads_args = malloc( arg_size * ts->thread_count );
        if( ts->task_threads == ((void*)0) )
            goto fail;
    }
    init_step++;

    ts->task_begin_bitmap = malloc( sizeof( uint32_t ) * ts->bitmap_elements );
    if( ts->task_begin_bitmap == ((void*)0) )
        goto fail;
    init_step++;

    ts->task_complete_bitmap = malloc( sizeof( uint32_t ) * ts->bitmap_elements );
    if( ts->task_complete_bitmap == ((void*)0) )
        goto fail;
    init_step++;

    ts->task_stop_bitmap = malloc( sizeof( uint32_t ) * ts->bitmap_elements );
    if( ts->task_stop_bitmap == ((void*)0) )
        goto fail;
    init_step++;

    ts->task_cond_lock = hb_lock_init();
    if( ts->task_cond_lock == ((void*)0))
        goto fail;
    init_step++;

    ts->task_begin = hb_cond_init();
    if( ts->task_begin == ((void*)0))
        goto fail;
    init_step++;

    ts->task_complete = hb_cond_init();
    if( ts->task_complete == ((void*)0))
        goto fail;
    init_step++;




    memset(ts->task_threads_args, 0, ts->arg_size * ts->thread_count );







    memset(ts->task_begin_bitmap, 0xFF, sizeof( uint32_t ) * ts->bitmap_elements );
    memset(ts->task_complete_bitmap, 0xFF, sizeof( uint32_t ) * ts->bitmap_elements );
    memset(ts->task_stop_bitmap, 0, sizeof( uint32_t ) * ts->bitmap_elements );





    bit_nclear( ts->task_begin_bitmap, 0, ts->thread_count - 1 );
    bit_nclear( ts->task_complete_bitmap, 0, ts->thread_count - 1 );
    bit_nclear( ts->task_stop_bitmap, 0, ts->thread_count - 1 );
    return (1);

fail:
    switch (init_step)
    {
        default:
            hb_cond_close( &ts->task_complete );

        case 7:
            hb_cond_close( &ts->task_begin );

        case 6:
            hb_lock_close( &ts->task_cond_lock );

        case 5:
            free( ts->task_stop_bitmap );

        case 4:
            free( ts->task_complete_bitmap );

        case 3:
            free( ts->task_begin_bitmap );

        case 2:
            free( ts->task_threads_args );

        case 1:
            free( ts->task_threads );

        case 0:
            break;
    }
    return (0);
}
