
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_24__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_14__ ;


typedef int ccv_nnc_tensor_tape_t ;
struct TYPE_30__ {int type; } ;
struct TYPE_28__ {int u8; } ;
struct TYPE_31__ {TYPE_2__ info; TYPE_1__ data; } ;
typedef TYPE_3__ ccv_nnc_tensor_t ;
typedef int ccv_nnc_stream_task_t ;
typedef int ccv_nnc_stream_scheduler_t ;
typedef int ccv_nnc_stream_context_t ;
struct TYPE_32__ {int const exec_idx; int const flags; int * stream_context; int * const tensor_tape; TYPE_7__* const exec; TYPE_5__* graph; TYPE_3__** inputs; } ;
typedef TYPE_4__ ccv_nnc_graph_topsorted_run_coro_t ;
struct TYPE_33__ {int * signals; int ** streams; int sub_graphs; } ;
typedef TYPE_5__ ccv_nnc_graph_t ;
struct TYPE_34__ {int * const stream; TYPE_7__* const node; TYPE_5__* const graph; } ;
typedef TYPE_6__ ccv_nnc_graph_neighbor_context_discovery_t ;
struct TYPE_29__ {int stream_size; int wait_size; size_t* waits; } ;
struct TYPE_27__ {scalar_t__ cmd; } ;
struct TYPE_35__ {int input_size; int output_size; int flags; TYPE_24__ schedule; int hint; TYPE_14__ cmd; int output_flags; int input_flags; TYPE_3__** inputs; } ;
typedef TYPE_7__ ccv_nnc_graph_exec_info_t ;
typedef TYPE_4__ ccv_nnc_graph_exec_cases_of_coro_t ;


 scalar_t__ CCV_CLI_OUTPUT_LEVEL_IS (int ) ;
 int CCV_CLI_VERBOSE ;
 scalar_t__ CCV_NNC_GRAPH_BACKWARD ;
 int CCV_NNC_GRAPH_EXEC_CASE_OF ;
 int CCV_NNC_GRAPH_EXEC_P_WHILE ;
 scalar_t__ CCV_NNC_GRAPH_FORWARD ;
 scalar_t__* CCV_NNC_GRAPH_REF (TYPE_7__* const) ;
 int CCV_TENSOR_GET_DEVICE_ID (int ) ;
 int PRINT (int ,char*,...) ;
 size_t* SCHEDULE_SIGNALS (TYPE_24__) ;
 size_t* SCHEDULE_STREAMS (TYPE_24__) ;
 int _ccv_nnc_graph_exec_begin_synchronize_multiviews (TYPE_5__* const,TYPE_7__* const) ;
 int _ccv_nnc_graph_exec_cases_of_coro ;
 int _ccv_nnc_graph_exec_unwrap_io (TYPE_5__* const,TYPE_7__* const) ;
 int _ccv_nnc_graph_neighbor_context_discovery ;
 int _ccv_nnc_graph_topsorted_run_coro ;
 int _ccv_nnc_print_tensor_verbose (TYPE_3__*) ;
 int assert (int) ;
 scalar_t__ ccv_array_get (int ,scalar_t__) ;
 int ccv_nnc_cmd_exec (TYPE_14__,int ,int const,TYPE_3__**,int,TYPE_3__**,int,int * const) ;
 int ccv_nnc_cmd_name (scalar_t__) ;
 int ccv_nnc_stream_context_emit_signal (int * const,int ) ;
 int ccv_nnc_stream_context_set_neighbor_discovery (int * const,int ,TYPE_6__*) ;
 int ccv_nnc_stream_context_wait_signal (int * const,int ) ;
 int * ccv_nnc_stream_task_new (int * const,int ,TYPE_4__*,int ) ;
 int ccv_nnc_stream_task_resume (int * const) ;
 int ccv_nnc_tensor_tape_io (int * const,TYPE_5__* const,int ,TYPE_3__**,int,int ,TYPE_3__**,int) ;

__attribute__((used)) static inline ccv_nnc_stream_task_t* _ccv_nnc_graph_exec_run_task(ccv_nnc_graph_t* const graph, ccv_nnc_graph_exec_info_t* const node, const int idx, ccv_nnc_tensor_tape_t* const tensor_tape, ccv_nnc_stream_scheduler_t* const scheduler, const int flags)
{
 _ccv_nnc_graph_exec_unwrap_io(graph, node);
 ccv_nnc_tensor_t** inputs = node->inputs;
 ccv_nnc_tensor_t** outputs = inputs + node->input_size;
 if (tensor_tape)
  ccv_nnc_tensor_tape_io(tensor_tape, graph, node->input_flags, inputs, node->input_size, node->output_flags, outputs, node->output_size);


 _ccv_nnc_graph_exec_begin_synchronize_multiviews(graph, node);
 if (node->cmd.cmd == CCV_NNC_GRAPH_FORWARD || node->cmd.cmd == CCV_NNC_GRAPH_BACKWARD)
 {
  if (node->flags & CCV_NNC_GRAPH_EXEC_CASE_OF)
  {
   ccv_nnc_stream_context_t* const node_stream = graph->streams[SCHEDULE_STREAMS(node->schedule)[0]];
   ccv_nnc_graph_exec_cases_of_coro_t params = {
    .graph = graph,
    .exec_idx = idx,
    .exec = node,
    .inputs = inputs,
    .tensor_tape = tensor_tape,
    .stream_context = node_stream,
    .flags = flags,
   };
   ccv_nnc_stream_task_t* const task = ccv_nnc_stream_task_new(scheduler, _ccv_nnc_graph_exec_cases_of_coro, &params, 0);
   ccv_nnc_stream_task_resume(task);
   return task;
  } else if (node->flags & CCV_NNC_GRAPH_EXEC_P_WHILE) {
   ccv_nnc_graph_t* sub_graph = *(ccv_nnc_graph_t**)ccv_array_get(graph->sub_graphs, CCV_NNC_GRAPH_REF(node)[0] - 1);
   assert(graph->streams[SCHEDULE_STREAMS(node->schedule)[0]] == sub_graph->streams[0]);
   ccv_nnc_graph_topsorted_run_coro_t params = {
    .graph = sub_graph,
    .exec_idx = idx,
    .exec = node,
    .tensor_tape = tensor_tape,
    .stream_context = graph->streams[SCHEDULE_STREAMS(node->schedule)[0]],
    .flags = flags
   };
   ccv_nnc_stream_task_t* const task = ccv_nnc_stream_task_new(scheduler, _ccv_nnc_graph_topsorted_run_coro, &params, 0);
   ccv_nnc_stream_task_resume(task);
   return task;
  }
 } else {
  int i, j;
  for (i = 0; i < node->schedule.stream_size; i++)
  {
   ccv_nnc_stream_context_t* const stream = graph->streams[SCHEDULE_STREAMS(node->schedule)[i]];
   for (j = 0; j < node->schedule.wait_size; j++)
    ccv_nnc_stream_context_wait_signal(stream, graph->signals[node->schedule.waits[j]]);
  }
  PRINT(CCV_CLI_VERBOSE, "%s [%d]: [%d] -> [%d]\n", ccv_nnc_cmd_name(node->cmd.cmd), idx, node->input_size, node->output_size);
  for (i = 0; i < node->input_size; i++)
  {
   PRINT(CCV_CLI_VERBOSE, "|-> %d. %p (%p:%d)", i + 1, inputs[i], (inputs[i] ? inputs[i]->data.u8 : 0), (inputs[i] ? CCV_TENSOR_GET_DEVICE_ID(inputs[i]->info.type) : -1));
   if (inputs[i] && CCV_CLI_OUTPUT_LEVEL_IS(CCV_CLI_VERBOSE))
    _ccv_nnc_print_tensor_verbose(inputs[i]);
   PRINT(CCV_CLI_VERBOSE, "\n");
  }
  ccv_nnc_stream_context_t* const node_stream = graph->streams[SCHEDULE_STREAMS(node->schedule)[0]];
  ccv_nnc_graph_neighbor_context_discovery_t discovery_context = {
   .graph = graph,
   .node = node,
   .stream = node_stream
  };
  ccv_nnc_stream_context_set_neighbor_discovery(node_stream, _ccv_nnc_graph_neighbor_context_discovery, &discovery_context);
  ccv_nnc_cmd_exec(node->cmd, node->hint, flags, inputs, node->input_size, outputs, node->output_size, node_stream);
  for (i = 0; i < node->output_size; i++)
  {
   PRINT(CCV_CLI_VERBOSE, "|<- %d. %p (%p:%d)", i + 1, outputs[i], (outputs[i] ? outputs[i]->data.u8 : 0), (outputs[i] ? CCV_TENSOR_GET_DEVICE_ID(outputs[i]->info.type) : -1));
   if (outputs[i] && CCV_CLI_OUTPUT_LEVEL_IS(CCV_CLI_VERBOSE))
    _ccv_nnc_print_tensor_verbose(outputs[i]);
   PRINT(CCV_CLI_VERBOSE, "\n");
  }
  for (i = 0; i < node->schedule.stream_size; i++)
   if (SCHEDULE_SIGNALS(node->schedule)[i] >= 0)
   {
    ccv_nnc_stream_context_t* const stream = graph->streams[SCHEDULE_STREAMS(node->schedule)[i]];
    ccv_nnc_stream_context_emit_signal(stream, graph->signals[SCHEDULE_SIGNALS(node->schedule)[i]]);
   }
 }
 return 0;
}
