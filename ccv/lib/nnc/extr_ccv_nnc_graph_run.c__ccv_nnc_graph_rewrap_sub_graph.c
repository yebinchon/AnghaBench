
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int to; int from; } ;
typedef TYPE_1__ ccv_nnc_graph_tensor_carry_over_t ;
struct TYPE_8__ {TYPE_3__* sub_graphs; TYPE_3__* carry_overs; } ;
typedef TYPE_2__ ccv_nnc_graph_t ;
struct TYPE_9__ {int rnum; } ;


 int _ccv_nnc_rewrap_tensor_wrap (TYPE_2__ const* const,int ) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;

__attribute__((used)) static void _ccv_nnc_graph_rewrap_sub_graph(const ccv_nnc_graph_t* const graph, const ccv_nnc_graph_t* const sub_graph)
{
 int i;
 if (sub_graph->carry_overs)
  for (i = 0; i < sub_graph->carry_overs->rnum; i++)
  {
   ccv_nnc_graph_tensor_carry_over_t* const carry_over = (ccv_nnc_graph_tensor_carry_over_t*)ccv_array_get(sub_graph->carry_overs, i);
   _ccv_nnc_rewrap_tensor_wrap(graph, carry_over->from);
   _ccv_nnc_rewrap_tensor_wrap(graph, carry_over->to);
  }
 if (sub_graph->sub_graphs)
  for (i = 0; i < sub_graph->sub_graphs->rnum; i++)
   _ccv_nnc_graph_rewrap_sub_graph(graph, *(ccv_nnc_graph_t**)ccv_array_get(sub_graph->sub_graphs, i));
}
