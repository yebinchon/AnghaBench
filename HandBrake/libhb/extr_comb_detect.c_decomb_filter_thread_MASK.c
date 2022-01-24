#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mode; int /*<<< orphan*/  decomb_filter_taskset; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {int segment; int* segment_start; int* segment_height; TYPE_1__* pv; } ;
typedef  TYPE_2__ decomb_thread_arg_t ;

/* Variables and functions */
 int MODE_GAMMA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6( void *thread_args_v )
{
    hb_filter_private_t * pv;
    int segment, segment_start, segment_stop;
    decomb_thread_arg_t *thread_args = thread_args_v;

    pv = thread_args->pv;
    segment = thread_args->segment;

    FUNC2(3, "decomb filter thread started for segment %d", segment);

    while (1)
    {
        /*
         * Wait here until there is work to do.
         */
        FUNC5( &pv->decomb_filter_taskset, segment );

        if (FUNC4( &pv->decomb_filter_taskset, segment ))
        {
            /*
             * No more work to do, exit this thread.
             */
            break;
        }

        /*
         * Process segment (for now just from luma)
         */
        int pp;
        for (pp = 0; pp < 1; pp++)
        {
            segment_start = thread_args->segment_start[pp];
            segment_stop = segment_start + thread_args->segment_height[pp];

            if (pv->mode & MODE_GAMMA)
            {
                FUNC1( pv, segment_start, segment_stop );
            }
            else
            {
                FUNC0( pv, segment_start, segment_stop );
            }
        }

        FUNC3( &pv->decomb_filter_taskset, segment );
    }

    /*
     * Finished this segment, let everyone know.
     */
    FUNC3( &pv->decomb_filter_taskset, segment );
}