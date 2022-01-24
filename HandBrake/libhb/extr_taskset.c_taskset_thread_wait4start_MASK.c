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
struct TYPE_3__ {int /*<<< orphan*/  task_cond_lock; int /*<<< orphan*/  task_begin_bitmap; int /*<<< orphan*/  task_begin; } ;
typedef  TYPE_1__ taskset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5( taskset_t *ts, int thr_idx )
{
    FUNC3( ts->task_cond_lock );
    while ( FUNC1( ts->task_begin_bitmap, thr_idx ) )
        FUNC2( ts->task_begin, ts->task_cond_lock );

    /*
     * We've been released for one run.  Insure we block the next
     * time through the loop.
     */
    FUNC0( ts->task_begin_bitmap, thr_idx );
    FUNC4( ts->task_cond_lock );
}