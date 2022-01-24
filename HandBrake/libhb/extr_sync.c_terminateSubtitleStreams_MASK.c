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
struct TYPE_4__ {scalar_t__ type; int done; int /*<<< orphan*/  fifo_in; int /*<<< orphan*/  fifo_out; } ;
typedef  TYPE_1__ sync_stream_t ;
struct TYPE_5__ {int stream_count; TYPE_1__* streams; } ;
typedef  TYPE_2__ sync_common_t ;

/* Variables and functions */
 scalar_t__ SYNC_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2( sync_common_t * common )
{
    int ii;

    // Make sure all streams are complete
    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];
        if (stream->type == SYNC_TYPE_SUBTITLE)
        {
            continue;
        }
        if (!stream->done)
        {
            return;
        }
    }

    // Terminate all subtitle streams
    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];
        if (stream->done || stream->type != SYNC_TYPE_SUBTITLE)
        {
            continue;
        }
        FUNC0(stream->fifo_out, FUNC1());
        FUNC0(stream->fifo_in,  FUNC1());
        stream->done = 1;
    }
}