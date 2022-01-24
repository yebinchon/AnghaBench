#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int thread_count; int /*<<< orphan*/ * task_stop_bitmap; int /*<<< orphan*/ * task_complete_bitmap; int /*<<< orphan*/ * task_begin_bitmap; int /*<<< orphan*/ * task_threads_args; int /*<<< orphan*/ * task_threads; int /*<<< orphan*/  task_complete; int /*<<< orphan*/  task_begin; int /*<<< orphan*/  task_cond_lock; } ;
typedef  TYPE_1__ taskset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9( taskset_t *ts )
{
    int i;

    FUNC5( ts->task_cond_lock );
    /*
     * Tell each thread to stop, and then cleanup.
     */
    FUNC0( ts->task_stop_bitmap, 0, ts->thread_count - 1 );
    FUNC0( ts->task_begin_bitmap, 0, ts->thread_count - 1 );
    FUNC2( ts->task_begin );

    /*
     * Wait for all threads to exit.
     */
    FUNC4( ts->task_complete, ts->task_cond_lock );
    FUNC8( ts->task_cond_lock );

    /*
     * Clean up taskset memory.
     */
    for( i = 0; i < ts->thread_count; i++)
    {
        FUNC7( &ts->task_threads[i] );
    }
    FUNC6( &ts->task_cond_lock );
    FUNC3( &ts->task_begin );
    FUNC3( &ts->task_complete );
    FUNC1( ts->task_threads );
    if( ts->task_threads_args != NULL )
        FUNC1( ts->task_threads_args );
    FUNC1( ts->task_begin_bitmap );
    FUNC1( ts->task_complete_bitmap );
    FUNC1( ts->task_stop_bitmap );
}