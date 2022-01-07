
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ destinations; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_graph_exec_symbol_t ;


 scalar_t__ ccv_array_get (scalar_t__,int ) ;

ccv_nnc_graph_exec_symbol_t* ccv_nnc_symbolic_graph_destinations(const ccv_nnc_symbolic_graph_t* const graph)
{
 return graph->destinations ? (ccv_nnc_graph_exec_symbol_t*)ccv_array_get(graph->destinations, 0) : 0;
}
