#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  in_queue; } ;
typedef  TYPE_2__ sync_stream_t ;
struct TYPE_13__ {int stream_count; int found_first_pts; TYPE_2__* streams; } ;
typedef  TYPE_3__ sync_common_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ start; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
typedef  TYPE_4__ hb_buffer_t ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ INT64_MAX ; 
 scalar_t__ SYNC_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void FUNC6( sync_common_t * common )
{
    int             ii;
    int64_t         first_pts = INT64_MAX;
    sync_stream_t * first_stream = NULL;

    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t *stream = &common->streams[ii];
        if (stream->type == SYNC_TYPE_SUBTITLE)
        {
            // only wait for audio and video
            continue;
        }

        // If buffers are queued, find the lowest initial PTS
        while (FUNC3(stream->in_queue) > 0)
        {
            hb_buffer_t * buf = FUNC4(stream->in_queue, 0);
            if (buf->s.start != AV_NOPTS_VALUE)
            {
                // We require an initial pts for every stream
                if (buf->s.start < first_pts)
                {
                    first_pts = buf->s.start;
                    first_stream = stream;
                }
                break;
            }
            else
            {
                FUNC5(stream->in_queue, buf);
                FUNC1(&buf);
            }
        }
    }
    // We should *always* find a first pts because we let the queues
    // fill before performing this test.
    if (first_pts != INT64_MAX)
    {
        common->found_first_pts = 1;
        // We may have buffers that have no timestamps (i.e. AV_NOPTS_VALUE).
        // Compute these timestamps based on previous buffer's timestamp
        // and duration.
        FUNC0(common, first_stream);
        // After this initialization, all AV_NOPTS_VALUE timestamps
        // will be filled in by UpdateSCR()
    }
    else
    {
        // This should never happen
        FUNC2("checkFirstPts: No initial PTS found!\n");
    }
}