#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_16__ {int sink_links_count; TYPE_3__** sink_links; } ;
struct TYPE_15__ {int age_index; scalar_t__ frame_count_out; int /*<<< orphan*/  status_in; int /*<<< orphan*/  frame_blocked_in; int /*<<< orphan*/  frame_wanted_out; TYPE_10__* dst; TYPE_1__* dstpad; } ;
struct TYPE_14__ {scalar_t__ activate; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {char* name; TYPE_2__* filter; } ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_BUFFERSINK_FLAG_PEEK ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,int) ; 

int FUNC7(AVFilterGraph *graph)
{
    AVFilterLink *oldest = graph->sink_links[0];
    int64_t frame_count;
    int r;

    while (graph->sink_links_count) {
        oldest = graph->sink_links[0];
        if (oldest->dst->filter->activate) {
            /* For now, buffersink is the only filter implementing activate. */
            r = FUNC2(oldest->dst, NULL,
                                              AV_BUFFERSINK_FLAG_PEEK);
            if (r != AVERROR_EOF)
                return r;
        } else {
            r = FUNC5(oldest);
        }
        if (r != AVERROR_EOF)
            break;
        FUNC3(oldest->dst, AV_LOG_DEBUG, "EOF on sink link %s:%s.\n",
               oldest->dst ? oldest->dst->name : "unknown",
               oldest->dstpad ? oldest->dstpad->name : "unknown");
        /* EOF: remove the link from the heap */
        if (oldest->age_index < --graph->sink_links_count)
            FUNC6(graph, graph->sink_links[graph->sink_links_count],
                             oldest->age_index);
        oldest->age_index = -1;
    }
    if (!graph->sink_links_count)
        return AVERROR_EOF;
    FUNC1(!oldest->dst->filter->activate);
    FUNC1(oldest->age_index >= 0);
    frame_count = oldest->frame_count_out;
    while (frame_count == oldest->frame_count_out) {
        r = FUNC4(graph);
        if (r == FUNC0(EAGAIN) &&
            !oldest->frame_wanted_out && !oldest->frame_blocked_in &&
            !oldest->status_in)
            FUNC5(oldest);
        else if (r < 0)
            return r;
    }
    return 0;
}