
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sources; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_7__ {TYPE_1__* const graph; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_t ;


 int assert (int) ;
 scalar_t__ ccv_array_new (int,int ,int ) ;
 int ccv_array_push (scalar_t__,TYPE_2__ const*) ;

void ccv_nnc_symbolic_graph_add_source(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t source)
{
 if (!graph->sources)
  graph->sources = ccv_array_new(sizeof(ccv_nnc_graph_exec_symbol_t), 0, 0);
 assert(source.graph == graph);
 ccv_array_push(graph->sources, &source);
}
