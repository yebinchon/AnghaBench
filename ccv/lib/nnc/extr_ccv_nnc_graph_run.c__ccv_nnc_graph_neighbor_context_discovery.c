
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_stream_context_t ;
struct TYPE_5__ {int * signals; int ** streams; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_6__ {TYPE_3__* node; TYPE_1__* graph; int * stream; } ;
typedef TYPE_2__ ccv_nnc_graph_neighbor_context_discovery_t ;
struct TYPE_8__ {int stream_size; int wait_size; size_t* waits; } ;
struct TYPE_7__ {TYPE_4__ schedule; } ;
typedef TYPE_3__ ccv_nnc_graph_exec_info_t ;


 int const CCV_STREAM_GET_DEVICE_ID (int ) ;
 size_t* SCHEDULE_STREAMS (TYPE_4__) ;
 int ccv_nnc_stream_context_type (int *) ;
 int * ccv_nnc_stream_signal_get_emitter (int ) ;

__attribute__((used)) static ccv_nnc_stream_context_t* _ccv_nnc_graph_neighbor_context_discovery(const int device_id, void* const context)
{
 const ccv_nnc_graph_neighbor_context_discovery_t* const discovery = (ccv_nnc_graph_neighbor_context_discovery_t*)context;
 if (CCV_STREAM_GET_DEVICE_ID(ccv_nnc_stream_context_type(discovery->stream)) == device_id)
  return discovery->stream;
 ccv_nnc_graph_t* const graph = discovery->graph;
 ccv_nnc_graph_exec_info_t* const node = discovery->node;
 int i;

 for (i = 0; i < node->schedule.stream_size; i++)
 {
  ccv_nnc_stream_context_t* const stream = graph->streams[SCHEDULE_STREAMS(node->schedule)[i]];
  if (CCV_STREAM_GET_DEVICE_ID(ccv_nnc_stream_context_type(stream)) == device_id)
   return stream;
 }

 for (i = 0; i < node->schedule.wait_size; i++)
 {
  ccv_nnc_stream_context_t* stream_context = ccv_nnc_stream_signal_get_emitter(graph->signals[node->schedule.waits[i]]);
  if (stream_context && CCV_STREAM_GET_DEVICE_ID(ccv_nnc_stream_context_type(stream_context)) == device_id)
   return stream_context;
 }
 return 0;
}
