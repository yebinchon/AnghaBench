
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** tensor_wraps; } ;
typedef TYPE_2__ ccv_nnc_graph_tensor_wrap_array_t ;
struct TYPE_10__ {TYPE_5__* tensor_wraps; } ;
typedef TYPE_3__ ccv_nnc_graph_t ;
struct TYPE_11__ {scalar_t__ tensor_wraps_ref; int input_size; int output_size; int update_size; int * updates; int * outputs; int * inputs; } ;
typedef TYPE_4__ ccv_nnc_graph_exec_info_t ;
struct TYPE_12__ {scalar_t__ rnum; } ;
struct TYPE_8__ {int * tensors; } ;


 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_5__*,scalar_t__) ;

__attribute__((used)) static void _ccv_nnc_graph_exec_rewind(ccv_nnc_graph_exec_info_t* const info, ccv_nnc_graph_t* const graph)
{
 if (!info->tensor_wraps_ref)
  return;
 int i;
 assert(info->tensor_wraps_ref <= graph->tensor_wraps->rnum);
 ccv_nnc_graph_tensor_wrap_array_t* const tensor_wrap_array = *(ccv_nnc_graph_tensor_wrap_array_t**)ccv_array_get(graph->tensor_wraps, info->tensor_wraps_ref - 1);;

 for (i = 0; i < info->input_size; i++)
  if (tensor_wrap_array->tensor_wraps[i])
   info->inputs[i] = tensor_wrap_array->tensor_wraps[i]->tensors[0];
 const int d = info->input_size;
 for (i = 0; i < info->output_size; i++)
  if (tensor_wrap_array->tensor_wraps[d + i])
   info->outputs[i] = tensor_wrap_array->tensor_wraps[d + i]->tensors[0];
 const int dd = info->input_size + info->output_size;
 for (i = 0; i < info->update_size; i++)
  if (tensor_wrap_array->tensor_wraps[dd + i])
   info->updates[i] = tensor_wrap_array->tensor_wraps[dd + i]->tensors[0];
}
