#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
struct TYPE_5__ {int /*<<< orphan*/ * signals; int /*<<< orphan*/ ** streams; } ;
typedef  TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_6__ {TYPE_3__* node; TYPE_1__* graph; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ ccv_nnc_graph_neighbor_context_discovery_t ;
struct TYPE_8__ {int stream_size; int wait_size; size_t* waits; } ;
struct TYPE_7__ {TYPE_4__ schedule; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_info_t ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 size_t* FUNC1 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ccv_nnc_stream_context_t* FUNC4(const int device_id, void* const context)
{
	const ccv_nnc_graph_neighbor_context_discovery_t* const discovery = (ccv_nnc_graph_neighbor_context_discovery_t*)context;
	if (FUNC0(FUNC2(discovery->stream)) == device_id)
		return discovery->stream;
	ccv_nnc_graph_t* const graph = discovery->graph;
	ccv_nnc_graph_exec_info_t* const node = discovery->node;
	int i;
	// First try to find in other streams of the same node.
	for (i = 0; i < node->schedule.stream_size; i++)
	{
		ccv_nnc_stream_context_t* const stream = graph->streams[FUNC1(node->schedule)[i]];
		if (FUNC0(FUNC2(stream)) == device_id)
			return stream;
	}
	// If cannot find, try to find in all the wait streams.
	for (i = 0; i < node->schedule.wait_size; i++)
	{
		ccv_nnc_stream_context_t* stream_context = FUNC3(graph->signals[node->schedule.waits[i]]);
		if (stream_context && FUNC0(FUNC2(stream_context)) == device_id)
			return stream_context;
	}
	return 0;
}