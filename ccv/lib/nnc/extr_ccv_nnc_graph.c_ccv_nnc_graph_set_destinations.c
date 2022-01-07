
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ topsorted; scalar_t__ destinations; int sources; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;
typedef int ccv_nnc_graph_exec_t ;


 int ccv_array_clear (int ) ;
 scalar_t__ ccv_array_new (int,int const,int ) ;
 int ccv_array_push (scalar_t__,int const* const) ;

void ccv_nnc_graph_set_destinations(ccv_nnc_graph_t* const graph, const ccv_nnc_graph_exec_t* const destinations, const int destination_size)
{
 if (!graph->destinations)
  graph->destinations = ccv_array_new(sizeof(ccv_nnc_graph_exec_t), destination_size, 0);
 else
  ccv_array_clear(graph->sources);
 int i;
 for (i = 0; i < destination_size; i++)
  ccv_array_push(graph->destinations, destinations + i);
 graph->topsorted = 0;
}
