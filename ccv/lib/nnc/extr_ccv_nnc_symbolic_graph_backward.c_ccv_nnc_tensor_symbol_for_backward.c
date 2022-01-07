
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t d; TYPE_3__ const* const graph; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_t ;
struct TYPE_8__ {size_t tensor_symbol_size; scalar_t__* tensor_symbol_idx; } ;
struct TYPE_10__ {TYPE_1__ backward; } ;
typedef TYPE_3__ ccv_nnc_symbolic_graph_t ;


 TYPE_2__ NO_TENSOR_SYMBOL ;
 int assert (int) ;

ccv_nnc_tensor_symbol_t ccv_nnc_tensor_symbol_for_backward(const ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t symbol)
{
 assert(symbol.d >= 0);
 assert(symbol.d < graph->backward.tensor_symbol_size);
 if (graph->backward.tensor_symbol_idx[symbol.d] < 0)
  return NO_TENSOR_SYMBOL;
 ccv_nnc_tensor_symbol_t tensor = {
  .d = graph->backward.tensor_symbol_idx[symbol.d],
  .graph = graph,
 };
 return tensor;
}
