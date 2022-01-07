
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_nnc_stream_context_t ;
struct TYPE_3__ {scalar_t__ stream_size; int ** streams; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;



ccv_nnc_stream_context_t* ccv_nnc_graph_default_stream(const ccv_nnc_graph_t* const graph)
{
 if (graph->streams && graph->stream_size > 0)
  return graph->streams[0];
 return 0;
}
