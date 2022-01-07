
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ccv_nnc_tensor_multiview_t ;
struct TYPE_7__ {int index; scalar_t__ update_required; scalar_t__* tensors; } ;
typedef TYPE_1__ ccv_nnc_graph_tensor_wrap_t ;
struct TYPE_8__ {int size; TYPE_1__** tensor_wraps; } ;
typedef TYPE_2__ ccv_nnc_graph_tensor_wrap_array_t ;
struct TYPE_9__ {int tensor_wraps; } ;
typedef TYPE_3__ ccv_nnc_graph_t ;
struct TYPE_10__ {scalar_t__ tensor_wraps_ref; } ;
typedef TYPE_4__ ccv_nnc_graph_exec_info_t ;


 int assert (int) ;
 scalar_t__ ccv_array_get (int ,scalar_t__) ;
 int ccv_nnc_tensor_multiview_synchronize (int * const) ;

__attribute__((used)) static void _ccv_nnc_graph_exec_begin_synchronize_multiviews(ccv_nnc_graph_t* const graph, ccv_nnc_graph_exec_info_t* const node)
{
 if (!node->tensor_wraps_ref)
  return;
 int i;
 ccv_nnc_graph_tensor_wrap_array_t* const tensor_wrap_array = *(ccv_nnc_graph_tensor_wrap_array_t**)ccv_array_get(graph->tensor_wraps, node->tensor_wraps_ref - 1);
 ccv_nnc_graph_tensor_wrap_t** const tensor_wraps = tensor_wrap_array->tensor_wraps;
 for (i = 0; i < tensor_wrap_array->size; i++)
  if (tensor_wraps[i] && tensor_wraps[i]->update_required)
  {
   assert(tensor_wraps[i]->index > 0);
   ccv_nnc_tensor_multiview_t* const mv = (ccv_nnc_tensor_multiview_t*)(tensor_wraps[i]->tensors[tensor_wraps[i]->index - 1]);

   ccv_nnc_tensor_multiview_synchronize(mv);
   tensor_wraps[i]->update_required = 0;
  }
}
