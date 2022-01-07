
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int params ;
typedef int ccv_nnc_tensor_tape_t ;
typedef int ccv_nnc_stream_task_t ;
typedef int ccv_nnc_stream_scheduler_t ;
typedef int ccv_nnc_stream_context_t ;
struct TYPE_6__ {int exec_idx; int const flags; int * const stream_context; int * const tensor_tape; int exec; TYPE_2__* const graph; } ;
typedef TYPE_1__ ccv_nnc_graph_topsorted_run_coro_t ;
struct TYPE_7__ {scalar_t__ stream_size; scalar_t__ topsorted; } ;
typedef TYPE_2__ ccv_nnc_graph_t ;
typedef int ccv_nnc_graph_exec_t ;


 int CCV_NNC_EXEC_SUCCESS ;
 int _ccv_nnc_graph_run (TYPE_2__* const,int,int ,int ,int ,int ,int ,int const,int const* const,int const,int const* const,int const,int * const,int ) ;
 int _ccv_nnc_graph_topsorted_run_coro ;
 int * ccv_nnc_stream_context_get_scheduler (int * const) ;
 int ccv_nnc_stream_schedule_task (int * const,int * const) ;
 int * ccv_nnc_stream_task_new (int * const,int ,TYPE_1__*,int) ;

int ccv_nnc_graph_run(ccv_nnc_graph_t* const graph, const int flags, const ccv_nnc_graph_exec_t* const sources, const int source_size, const ccv_nnc_graph_exec_t* const destinations, const int destination_size, ccv_nnc_tensor_tape_t* const tensor_tape, ccv_nnc_stream_context_t* const stream_context)
{
 if (stream_context && graph->topsorted && graph->stream_size > 0 && source_size == 0 && destination_size == 0)
 {
  ccv_nnc_stream_scheduler_t* const scheduler = ccv_nnc_stream_context_get_scheduler(stream_context);
  ccv_nnc_graph_topsorted_run_coro_t params = {
   .graph = graph,
   .exec_idx = -1,
   .exec = 0,
   .tensor_tape = tensor_tape,
   .stream_context = stream_context,
   .flags = flags
  };
  ccv_nnc_stream_task_t* const task = ccv_nnc_stream_task_new(scheduler, _ccv_nnc_graph_topsorted_run_coro, &params, sizeof(params));
  ccv_nnc_stream_schedule_task(scheduler, task);
  return CCV_NNC_EXEC_SUCCESS;
 } else
  return _ccv_nnc_graph_run(graph, -1, 0, 0, 0, 0, 0, flags, sources, source_size, destinations, destination_size, tensor_tape, 0 );
}
