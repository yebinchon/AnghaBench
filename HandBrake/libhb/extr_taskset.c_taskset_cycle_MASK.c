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
struct TYPE_3__ {int /*<<< orphan*/  task_cond_lock; scalar_t__ thread_count; int /*<<< orphan*/  task_complete_bitmap; int /*<<< orphan*/  task_complete; int /*<<< orphan*/  bitmap_elements; int /*<<< orphan*/  task_begin; int /*<<< orphan*/  task_begin_bitmap; } ;
typedef  TYPE_1__ taskset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7( taskset_t *ts )
{
    FUNC5( ts->task_cond_lock );

    /*
     * Signal all threads that their work is available.
     */
    FUNC2( ts->task_begin_bitmap, 0, ts->thread_count - 1 );
    FUNC3( ts->task_begin );

    /*
     * Wait until all threads have completed.  Note that we must
     * loop here as hb_cond_wait() on some platforms (e.g pthead_cond_wait)
     * may unblock prematurely.
     */
    do
    {
        FUNC4( ts->task_complete, ts->task_cond_lock );
    } while ( !FUNC0( ts->task_complete_bitmap, ts->bitmap_elements ) );

    /*
     * Clear completion indications for next time.
     */
    FUNC1( ts->task_complete_bitmap, 0, ts->thread_count - 1 );

    FUNC6( ts->task_cond_lock );
}