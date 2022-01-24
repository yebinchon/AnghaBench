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
typedef  int /*<<< orphan*/  hb_buffer_t ;
struct TYPE_3__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  out_time_base; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ hb_avfilter_graph_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

hb_buffer_t * FUNC3(hb_avfilter_graph_t * graph)
{
    int           result;

    result = FUNC0(graph->output, graph->frame);
    if (result >= 0)
    {
        hb_buffer_t * buf;
        buf = FUNC2(graph->frame, graph->out_time_base);
        FUNC1(graph->frame);
        return buf;
    }

    return NULL;
}