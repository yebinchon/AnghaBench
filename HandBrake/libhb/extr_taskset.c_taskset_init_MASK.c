#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int thread_count; size_t arg_size; int bitmap_elements; struct TYPE_6__* task_threads; struct TYPE_6__* task_threads_args; struct TYPE_6__* task_begin_bitmap; struct TYPE_6__* task_complete_bitmap; struct TYPE_6__* task_stop_bitmap; int /*<<< orphan*/ * task_cond_lock; int /*<<< orphan*/ * task_begin; int /*<<< orphan*/ * task_complete; } ;
typedef  TYPE_1__ taskset_t ;
typedef  int /*<<< orphan*/  hb_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 

int
FUNC8( taskset_t *ts, int thread_count, size_t arg_size )
{
    int init_step;

    init_step = 0;
    FUNC7( ts, 0, sizeof( *ts ) );
    ts->thread_count = thread_count;
    ts->arg_size = arg_size;
    ts->bitmap_elements = ( ts->thread_count + 31 ) / 32;
    ts->task_threads = FUNC6( sizeof( hb_thread_t* ) * ts->thread_count );
    if( ts->task_threads == NULL )
        goto fail;
    init_step++;

    if( arg_size != 0 )
    {
        ts->task_threads_args = FUNC6( arg_size * ts->thread_count );
        if( ts->task_threads == NULL )
            goto fail;
    }
    init_step++;

    ts->task_begin_bitmap = FUNC6( sizeof( uint32_t  ) * ts->bitmap_elements );
    if( ts->task_begin_bitmap == NULL )
        goto fail;
    init_step++;

    ts->task_complete_bitmap = FUNC6( sizeof( uint32_t ) * ts->bitmap_elements );
    if( ts->task_complete_bitmap == NULL )
        goto fail;
    init_step++;

    ts->task_stop_bitmap = FUNC6( sizeof( uint32_t ) * ts->bitmap_elements );
    if( ts->task_stop_bitmap == NULL )
        goto fail;
    init_step++;

    ts->task_cond_lock = FUNC5();
    if( ts->task_cond_lock == NULL)
        goto fail;
    init_step++;

    ts->task_begin = FUNC3();
    if( ts->task_begin == NULL)
        goto fail;
    init_step++;

    ts->task_complete = FUNC3();
    if( ts->task_complete == NULL)
        goto fail;
    init_step++;

    /*
     * Initialize all arg data to 0.
     */
    FUNC7(ts->task_threads_args, 0, ts->arg_size * ts->thread_count );

    /*
     * Initialize bitmaps to all bits set.  This means that any unused bits
     * in the bitmap are already in the "condition satisfied" state allowing
     * us to test the bitmap 32bits at a time without having to mask off
     * the end.
     */
    FUNC7(ts->task_begin_bitmap, 0xFF, sizeof( uint32_t ) * ts->bitmap_elements );
    FUNC7(ts->task_complete_bitmap, 0xFF, sizeof( uint32_t ) * ts->bitmap_elements );
    FUNC7(ts->task_stop_bitmap, 0, sizeof( uint32_t ) * ts->bitmap_elements );

    /*
     * Important to start off with the threads locked waiting
     * on input, no work completed, and not asked to stop.
     */
    FUNC0( ts->task_begin_bitmap, 0, ts->thread_count - 1 );
    FUNC0( ts->task_complete_bitmap, 0, ts->thread_count - 1 );
    FUNC0( ts->task_stop_bitmap, 0, ts->thread_count - 1 );
    return (1);

fail:
    switch (init_step)
    {
        default:
            FUNC2( &ts->task_complete );
            /* FALL THROUGH */
        case 7:
            FUNC2( &ts->task_begin );
            /* FALL THROUGH */
        case 6:
            FUNC4( &ts->task_cond_lock );
            /* FALL THROUGH */
        case 5:
            FUNC1( ts->task_stop_bitmap );
            /* FALL THROUGH */
        case 4:
            FUNC1( ts->task_complete_bitmap );
            /* FALL THROUGH */
        case 3:
            FUNC1( ts->task_begin_bitmap );
            /* FALL THROUGH */
        case 2:
            FUNC1( ts->task_threads_args );
            /* FALL THROUGH */
        case 1:
            FUNC1( ts->task_threads );
            /* FALL THROUGH */
        case 0:
            break;
    }
    return (0);
}