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
struct TYPE_3__ {int /*<<< orphan*/  task_cond_lock; int /*<<< orphan*/  task_complete; int /*<<< orphan*/  bitmap_elements; int /*<<< orphan*/  task_complete_bitmap; } ;
typedef  TYPE_1__ taskset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5( taskset_t *ts, int thr_idx )
{
    FUNC3( ts->task_cond_lock );
    FUNC1( ts->task_complete_bitmap, thr_idx );
    if( FUNC0( ts->task_complete_bitmap, ts->bitmap_elements ) )
    {
        FUNC2( ts->task_complete );
    }
    FUNC4( ts->task_cond_lock );
}