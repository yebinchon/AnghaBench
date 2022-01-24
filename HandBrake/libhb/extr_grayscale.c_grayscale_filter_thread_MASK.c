#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int cpu_count; int /*<<< orphan*/  grayscale_taskset; TYPE_5__* grayscale_arguments; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_8__ {TYPE_1__* plane; } ;
typedef  TYPE_3__ hb_buffer_t ;
struct TYPE_9__ {int segment; TYPE_2__* pv; } ;
typedef  TYPE_4__ grayscale_thread_arg_t ;
struct TYPE_10__ {TYPE_3__* src; } ;
typedef  TYPE_5__ grayscale_arguments_t ;
struct TYPE_6__ {int stride; int height; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7( void *thread_args_v )
{
    grayscale_arguments_t *grayscale_work = NULL;
    hb_filter_private_t * pv;
    int run = 1;
    int plane;
    int segment, segment_start, segment_stop;
    grayscale_thread_arg_t *thread_args = thread_args_v;
    hb_buffer_t *src_buf;

    pv = thread_args->pv;
    segment = thread_args->segment;

    FUNC0(3, "Grayscale thread started for segment %d", segment);

    while( run )
    {
        /*
         * Wait here until there is work to do.
         */
        FUNC6( &pv->grayscale_taskset, segment );

        if( FUNC5( &pv->grayscale_taskset, segment ) )
        {
            /*
             * No more work to do, exit this thread.
             */
            run = 0;
            goto report_completion;
        }

        grayscale_work = &pv->grayscale_arguments[segment];
        if (grayscale_work->src == NULL)
        {
            FUNC1( "Thread started when no work available" );
            FUNC2(500);
            goto report_completion;
        }

        /*
         * Process all three planes, but only this segment of it.
         */
        src_buf = grayscale_work->src;
        for (plane = 1; plane < 3; plane++)
        {
            int src_stride = src_buf->plane[plane].stride;
            int height     = src_buf->plane[plane].height;
            segment_start = (height / pv->cpu_count) * segment;
            if (segment == pv->cpu_count - 1)
            {
                /*
                 * Final segment
                 */
                segment_stop = height;
            } else {
                segment_stop = (height / pv->cpu_count) * (segment + 1);
            }

            FUNC3(&src_buf->plane[plane].data[segment_start * src_stride],
                   0x80, (segment_stop - segment_start) * src_stride);
        }

report_completion:
        /*
         * Finished this segment, let everyone know.
         */
        FUNC4( &pv->grayscale_taskset, segment );
    }
}