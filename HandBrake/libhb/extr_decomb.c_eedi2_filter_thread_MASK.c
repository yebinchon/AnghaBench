#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  eedi2_taskset; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_5__ {int plane; TYPE_1__* pv; } ;
typedef  TYPE_2__ eedi2_thread_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5( void *thread_args_v )
{
    hb_filter_private_t * pv;
    int plane;
    eedi2_thread_arg_t *thread_args = thread_args_v;

    pv = thread_args->pv;
    plane = thread_args->plane;

    FUNC1(3, "eedi2 thread started for plane %d", plane);

    while (1)
    {
        /*
         * Wait here until there is work to do.
         */
        FUNC4( &pv->eedi2_taskset, plane );

        if( FUNC3( &pv->eedi2_taskset, plane ) )
        {
            /*
             * No more work to do, exit this thread.
             */
            break;
        }

        /*
         * Process plane
         */
        FUNC0( pv, plane );

        /*
         * Finished this segment, let everyone know.
         */
        FUNC2( &pv->eedi2_taskset, plane );
    }

    FUNC2( &pv->eedi2_taskset, plane );
}