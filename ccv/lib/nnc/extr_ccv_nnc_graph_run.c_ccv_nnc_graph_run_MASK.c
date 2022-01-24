#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_tape_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_task_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_scheduler_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
struct TYPE_6__ {int exec_idx; int const flags; int /*<<< orphan*/ * const stream_context; int /*<<< orphan*/ * const tensor_tape; int /*<<< orphan*/  exec; TYPE_2__* const graph; } ;
typedef  TYPE_1__ ccv_nnc_graph_topsorted_run_coro_t ;
struct TYPE_7__ {scalar_t__ stream_size; scalar_t__ topsorted; } ;
typedef  TYPE_2__ ccv_nnc_graph_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_t ;

/* Variables and functions */
 int CCV_NNC_EXEC_SUCCESS ; 
 int FUNC0 (TYPE_2__* const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/  const* const,int const,int /*<<< orphan*/  const* const,int const,int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ccv_nnc_graph_topsorted_run_coro ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

int FUNC4(ccv_nnc_graph_t* const graph, const int flags, const ccv_nnc_graph_exec_t* const sources, const int source_size, const ccv_nnc_graph_exec_t* const destinations, const int destination_size, ccv_nnc_tensor_tape_t* const tensor_tape, ccv_nnc_stream_context_t* const stream_context)
{
	if (stream_context && graph->topsorted && graph->stream_size > 0 && source_size == 0 && destination_size == 0)
	{
		ccv_nnc_stream_scheduler_t* const scheduler = FUNC1(stream_context);
		ccv_nnc_graph_topsorted_run_coro_t params = {
			.graph = graph,
			.exec_idx = -1,
			.exec = 0,
			.tensor_tape = tensor_tape,
			.stream_context = stream_context,
			.flags = flags
		};
		ccv_nnc_stream_task_t* const task = FUNC3(scheduler, _ccv_nnc_graph_topsorted_run_coro, &params, sizeof(params));
		FUNC2(scheduler, task);
		return CCV_NNC_EXEC_SUCCESS;
	} else
		return FUNC0(graph, -1, 0, 0, 0, 0, 0, flags, sources, source_size, destinations, destination_size, tensor_tape, 0 /* In this case, we don't support stream context yet. */);
}