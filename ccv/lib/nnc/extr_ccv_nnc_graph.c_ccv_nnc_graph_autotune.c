
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* exec_info; TYPE_3__* destinations; TYPE_3__* sources; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;
typedef int const ccv_nnc_graph_exec_t ;
typedef int ccv_nnc_graph_exec_info_t ;
struct TYPE_6__ {int const rnum; } ;


 int CCV_NNC_GRAPH_VISIT (TYPE_1__* const,int *,int const,int const* const,int const,int const* const,int const,int ,int ) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int ) ;
 int visitor ;

void ccv_nnc_graph_autotune(ccv_nnc_graph_t* const graph, const size_t max_workspace_size, const int flags, const ccv_nnc_graph_exec_t* const sources, const int source_size, const ccv_nnc_graph_exec_t* const destinations, const int destination_size)
{

 int i;
 const ccv_nnc_graph_exec_t* const graph_sources = sources ? sources : (graph->sources ? (ccv_nnc_graph_exec_t*)ccv_array_get(graph->sources, 0): 0);
 const int graph_source_size = source_size ? source_size : (graph->sources ? graph->sources->rnum : 0);
 const ccv_nnc_graph_exec_t* const graph_destinations = destinations ? destinations : (graph->destinations ? (ccv_nnc_graph_exec_t*)ccv_array_get(graph->destinations, 0) : 0);
 const int graph_destination_size = destination_size ? destination_size : (graph->destinations ? graph->destinations->rnum : 0);
 CCV_NNC_GRAPH_VISIT(graph, (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, 0), graph->exec_info->rnum, graph_sources, graph_source_size, graph_destinations, graph_destination_size, 0, visitor);

}
