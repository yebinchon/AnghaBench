
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int d; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_t ;
struct TYPE_8__ {int exec_symbol_size; scalar_t__* exec_symbol_idx; } ;
struct TYPE_10__ {TYPE_1__ backward; } ;
typedef TYPE_3__ ccv_nnc_symbolic_graph_t ;
struct TYPE_11__ {scalar_t__ d; TYPE_3__ const* const graph; } ;
typedef TYPE_4__ ccv_nnc_graph_exec_symbol_t ;


 int assert (int) ;

ccv_nnc_graph_exec_symbol_t ccv_nnc_graph_exec_symbol_for_backward(const ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t symbol)
{
 assert(symbol.d >= 0);
 assert(symbol.d < graph->backward.exec_symbol_size);
 const int dd = symbol.d;
 assert(graph->backward.exec_symbol_idx[dd] >= 0);
 ccv_nnc_graph_exec_symbol_t exec = {
  .d = graph->backward.exec_symbol_idx[dd],
  .graph = graph
 };
 return exec;
}
