#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_24__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_tape_t ;
struct TYPE_30__ {int /*<<< orphan*/  type; } ;
struct TYPE_28__ {int /*<<< orphan*/  u8; } ;
struct TYPE_31__ {TYPE_2__ info; TYPE_1__ data; } ;
typedef  TYPE_3__ ccv_nnc_tensor_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_task_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_scheduler_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
struct TYPE_32__ {int const exec_idx; int const flags; int /*<<< orphan*/ * stream_context; int /*<<< orphan*/ * const tensor_tape; TYPE_7__* const exec; TYPE_5__* graph; TYPE_3__** inputs; } ;
typedef  TYPE_4__ ccv_nnc_graph_topsorted_run_coro_t ;
struct TYPE_33__ {int /*<<< orphan*/ * signals; int /*<<< orphan*/ ** streams; int /*<<< orphan*/  sub_graphs; } ;
typedef  TYPE_5__ ccv_nnc_graph_t ;
struct TYPE_34__ {int /*<<< orphan*/ * const stream; TYPE_7__* const node; TYPE_5__* const graph; } ;
typedef  TYPE_6__ ccv_nnc_graph_neighbor_context_discovery_t ;
struct TYPE_29__ {int stream_size; int wait_size; size_t* waits; } ;
struct TYPE_27__ {scalar_t__ cmd; } ;
struct TYPE_35__ {int input_size; int output_size; int flags; TYPE_24__ schedule; int /*<<< orphan*/  hint; TYPE_14__ cmd; int /*<<< orphan*/  output_flags; int /*<<< orphan*/  input_flags; TYPE_3__** inputs; } ;
typedef  TYPE_7__ ccv_nnc_graph_exec_info_t ;
typedef  TYPE_4__ ccv_nnc_graph_exec_cases_of_coro_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CCV_CLI_VERBOSE ; 
 scalar_t__ CCV_NNC_GRAPH_BACKWARD ; 
 int CCV_NNC_GRAPH_EXEC_CASE_OF ; 
 int CCV_NNC_GRAPH_EXEC_P_WHILE ; 
 scalar_t__ CCV_NNC_GRAPH_FORWARD ; 
 scalar_t__* FUNC1 (TYPE_7__* const) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t* FUNC4 (TYPE_24__) ; 
 size_t* FUNC5 (TYPE_24__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__* const,TYPE_7__* const) ; 
 int /*<<< orphan*/  _ccv_nnc_graph_exec_cases_of_coro ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__* const,TYPE_7__* const) ; 
 int /*<<< orphan*/  _ccv_nnc_graph_neighbor_context_discovery ; 
 int /*<<< orphan*/  _ccv_nnc_graph_topsorted_run_coro ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_14__,int /*<<< orphan*/ ,int const,TYPE_3__**,int,TYPE_3__**,int,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ * const,TYPE_5__* const,int /*<<< orphan*/ ,TYPE_3__**,int,int /*<<< orphan*/ ,TYPE_3__**,int) ; 

__attribute__((used)) static inline ccv_nnc_stream_task_t* FUNC19(ccv_nnc_graph_t* const graph, ccv_nnc_graph_exec_info_t* const node, const int idx, ccv_nnc_tensor_tape_t* const tensor_tape, ccv_nnc_stream_scheduler_t* const scheduler, const int flags)
{
	FUNC7(graph, node);
	ccv_nnc_tensor_t** inputs = node->inputs;
	ccv_nnc_tensor_t** outputs = inputs + node->input_size;
	if (tensor_tape)
		FUNC18(tensor_tape, graph, node->input_flags, inputs, node->input_size, node->output_flags, outputs, node->output_size);
	/* Broadcast the updates to all subscribed references for input / output, even though at th
	 * time output is not written yet, propagate pointer change is still valid. */
	FUNC6(graph, node);
	if (node->cmd.cmd == CCV_NNC_GRAPH_FORWARD || node->cmd.cmd == CCV_NNC_GRAPH_BACKWARD)
	{
		if (node->flags & CCV_NNC_GRAPH_EXEC_CASE_OF)
		{
			ccv_nnc_stream_context_t* const node_stream = graph->streams[FUNC5(node->schedule)[0]];
			ccv_nnc_graph_exec_cases_of_coro_t params = {
				.graph = graph,
				.exec_idx = idx,
				.exec = node,
				.inputs = inputs,
				.tensor_tape = tensor_tape,
				.stream_context = node_stream,
				.flags = flags,
			};
			ccv_nnc_stream_task_t* const task = FUNC16(scheduler, _ccv_nnc_graph_exec_cases_of_coro, &params, 0);
			FUNC17(task);
			return task;
		} else if (node->flags & CCV_NNC_GRAPH_EXEC_P_WHILE) {
			ccv_nnc_graph_t* sub_graph = *(ccv_nnc_graph_t**)FUNC10(graph->sub_graphs, FUNC1(node)[0] - 1);
			FUNC9(graph->streams[FUNC5(node->schedule)[0]] == sub_graph->streams[0]);
			ccv_nnc_graph_topsorted_run_coro_t params = {
				.graph = sub_graph,
				.exec_idx = idx,
				.exec = node,
				.tensor_tape = tensor_tape,
				.stream_context = graph->streams[FUNC5(node->schedule)[0]],
				.flags = flags
			};
			ccv_nnc_stream_task_t* const task = FUNC16(scheduler, _ccv_nnc_graph_topsorted_run_coro, &params, 0);
			FUNC17(task);
			return task;
		}
	} else {
		int i, j;
		for (i = 0; i < node->schedule.stream_size; i++)
		{
			ccv_nnc_stream_context_t* const stream = graph->streams[FUNC5(node->schedule)[i]];
			for (j = 0; j < node->schedule.wait_size; j++)
				FUNC15(stream, graph->signals[node->schedule.waits[j]]);
		}
		FUNC3(CCV_CLI_VERBOSE, "%s [%d]: [%d] -> [%d]\n", FUNC12(node->cmd.cmd), idx, node->input_size, node->output_size);
		for (i = 0; i < node->input_size; i++)
		{
			FUNC3(CCV_CLI_VERBOSE, "|-> %d. %p (%p:%d)", i + 1, inputs[i], (inputs[i] ? inputs[i]->data.u8 : 0), (inputs[i] ? FUNC2(inputs[i]->info.type) : -1));
			if (inputs[i] && FUNC0(CCV_CLI_VERBOSE))
				FUNC8(inputs[i]);
			FUNC3(CCV_CLI_VERBOSE, "\n");
		}
		ccv_nnc_stream_context_t* const node_stream = graph->streams[FUNC5(node->schedule)[0]];
		ccv_nnc_graph_neighbor_context_discovery_t discovery_context = {
			.graph = graph,
			.node = node,
			.stream = node_stream
		};
		FUNC14(node_stream, _ccv_nnc_graph_neighbor_context_discovery, &discovery_context);
		FUNC11(node->cmd, node->hint, flags, inputs, node->input_size, outputs, node->output_size, node_stream);
		for (i = 0; i < node->output_size; i++)
		{
			FUNC3(CCV_CLI_VERBOSE, "|<- %d. %p (%p:%d)", i + 1, outputs[i], (outputs[i] ? outputs[i]->data.u8 : 0), (outputs[i] ? FUNC2(outputs[i]->info.type) : -1));
			if (outputs[i] && FUNC0(CCV_CLI_VERBOSE))
				FUNC8(outputs[i]);
			FUNC3(CCV_CLI_VERBOSE, "\n");
		}
		for (i = 0; i < node->schedule.stream_size; i++)
			if (FUNC4(node->schedule)[i] >= 0)
			{
				ccv_nnc_stream_context_t* const stream = graph->streams[FUNC5(node->schedule)[i]];
				FUNC13(stream, graph->signals[FUNC4(node->schedule)[i]]);
			}
	}
	return 0;
}