
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ d; TYPE_3__* const graph; } ;
typedef TYPE_1__ ccv_nnc_tensor_symbol_t ;
struct TYPE_8__ {int flags; scalar_t__ assign_ref; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_9__ {TYPE_6__* tensor_symbol_info; } ;
typedef TYPE_3__ ccv_nnc_symbolic_graph_t ;
struct TYPE_10__ {scalar_t__ rnum; } ;


 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_6__*,scalar_t__) ;

int ccv_nnc_tensor_symbol_set_flags(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t tensor, const int flags)
{
 assert(graph == tensor.graph);
 assert(tensor.d < graph->tensor_symbol_info->rnum);
 ccv_nnc_tensor_symbol_info_t* const symbol_info = (ccv_nnc_tensor_symbol_info_t*)ccv_array_get(graph->tensor_symbol_info, tensor.d);
 symbol_info->flags = flags;

 if (symbol_info->assign_ref)
 {
  ccv_nnc_tensor_symbol_info_t* const assign_info = (ccv_nnc_tensor_symbol_info_t*)ccv_array_get(graph->tensor_symbol_info, symbol_info->assign_ref - 1);
  assign_info->flags = flags;
 }
 return 0;
}
