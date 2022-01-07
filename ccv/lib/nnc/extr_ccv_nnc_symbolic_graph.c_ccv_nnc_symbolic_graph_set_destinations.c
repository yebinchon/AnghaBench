
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ destinations; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_graph_exec_symbol_t ;


 int ccv_array_clear (scalar_t__) ;
 scalar_t__ ccv_array_new (int,int ,int ) ;
 int ccv_nnc_symbolic_graph_add_destination (TYPE_1__* const,int const) ;

void ccv_nnc_symbolic_graph_set_destinations(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t* const destinations, const int destination_size)
{
 if (!graph->destinations)
  graph->destinations = ccv_array_new(sizeof(ccv_nnc_graph_exec_symbol_t), 0, 0);
 else
  ccv_array_clear(graph->destinations);
 int i;
 for (i = 0; i < destination_size; i++)
  ccv_nnc_symbolic_graph_add_destination(graph, destinations[i]);
}
