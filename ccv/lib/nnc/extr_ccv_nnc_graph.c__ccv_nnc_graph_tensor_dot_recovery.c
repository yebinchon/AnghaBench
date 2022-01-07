
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int* inc; } ;
typedef TYPE_3__ ccv_nnc_tensor_view_t ;
struct TYPE_16__ {int* dim; } ;
struct TYPE_17__ {scalar_t__ u8; } ;
struct TYPE_19__ {int type; TYPE_1__ info; TYPE_2__ data; } ;
typedef TYPE_4__ ccv_nnc_tensor_t ;
typedef int ccv_nnc_tensor_multiview_t ;
struct TYPE_20__ {int name; uintptr_t tensor_ref; uintptr_t start_ptr; size_t end_ptr; int index; int zone; } ;
typedef TYPE_5__ ccv_nnc_tensor_dot_t ;
struct TYPE_21__ {int* remap; int* rename_index; int* rename_zone; TYPE_5__* dots; } ;
typedef TYPE_6__ ccv_nnc_tensor_dot_recovery_t ;
struct TYPE_22__ {TYPE_9__* exec_info; } ;
typedef TYPE_7__ ccv_nnc_graph_t ;
struct TYPE_23__ {int input_size; int output_size; TYPE_4__** outputs; TYPE_4__** inputs; } ;
typedef TYPE_8__ ccv_nnc_graph_exec_info_t ;
struct TYPE_24__ {int rnum; } ;


 int const CCV_GET_DATA_TYPE_SIZE (int ) ;
 scalar_t__ CCV_IS_TENSOR_MULTIVIEW (TYPE_4__*) ;
 scalar_t__ CCV_IS_TENSOR_VIEW (TYPE_4__*) ;
 int _ccv_nnc_graph_dot_tensor_multiview_count (int *) ;
 int _ccv_nnc_graph_dot_tensor_multiview_tensor_dots (int *,TYPE_5__*,int*) ;
 int _ccv_nnc_tensor_dot_sort_by_ptr (TYPE_5__*,int,int ) ;
 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccv_array_get (TYPE_9__*,int) ;
 uintptr_t ccv_max (uintptr_t,uintptr_t) ;
 int const ccv_nnc_dimension_count (int const*) ;

__attribute__((used)) static ccv_nnc_tensor_dot_recovery_t _ccv_nnc_graph_tensor_dot_recovery(const ccv_nnc_graph_t* const graph)
{
 int i, j;
 int tensor_count = 0;
 for (i = 0; i < graph->exec_info->rnum; i++)
 {
  ccv_nnc_graph_exec_info_t* exec_info = (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, i);
  for (j = 0; j < exec_info->input_size; j++)
   if (exec_info->inputs[j])
    tensor_count += CCV_IS_TENSOR_MULTIVIEW(exec_info->inputs[j]) ? _ccv_nnc_graph_dot_tensor_multiview_count((ccv_nnc_tensor_multiview_t*)exec_info->inputs[j]) : 1;
  for (j = 0; j < exec_info->output_size; j++)
   if (exec_info->outputs[j])
    tensor_count += CCV_IS_TENSOR_MULTIVIEW(exec_info->outputs[j]) ? _ccv_nnc_graph_dot_tensor_multiview_count((ccv_nnc_tensor_multiview_t*)exec_info->outputs[j]) : 1;
 }
 ccv_nnc_tensor_dot_t* tensor_dots = tensor_count > 0 ? (ccv_nnc_tensor_dot_t*)ccmalloc(sizeof(ccv_nnc_tensor_dot_t) * tensor_count) : 0;
 int k = 0;
 for (i = 0; i < graph->exec_info->rnum; i++)
 {
  ccv_nnc_graph_exec_info_t* exec_info = (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, i);
  for (j = 0; j < exec_info->input_size; j++)
  {
   ccv_nnc_tensor_t* tensor = exec_info->inputs[j];
   if (!tensor)
    continue;
   if (CCV_IS_TENSOR_MULTIVIEW(tensor))
    _ccv_nnc_graph_dot_tensor_multiview_tensor_dots((ccv_nnc_tensor_multiview_t*)tensor, tensor_dots, &k);
   else {
    tensor_dots[k].name = k;
    tensor_dots[k].tensor_ref = (uintptr_t)tensor;
    tensor_dots[k].start_ptr = (uintptr_t)tensor->data.u8;
    const int* inc = CCV_IS_TENSOR_VIEW(tensor) ? ((ccv_nnc_tensor_view_t*)tensor)->inc : tensor->info.dim;
    const size_t inc_size = (ccv_nnc_dimension_count(inc) - inc[0] + tensor->info.dim[0]) * CCV_GET_DATA_TYPE_SIZE(tensor->type);
    tensor_dots[k].end_ptr = tensor_dots[k].start_ptr + inc_size - 1;
    ++k;
   }
  }
  for (j = 0; j < exec_info->output_size; j++)
  {
   ccv_nnc_tensor_t* tensor = exec_info->outputs[j];
   if (!tensor)
    continue;
   if (CCV_IS_TENSOR_MULTIVIEW(tensor))
    _ccv_nnc_graph_dot_tensor_multiview_tensor_dots((ccv_nnc_tensor_multiview_t*)tensor, tensor_dots, &k);
   else {
    tensor_dots[k].name = k;
    tensor_dots[k].tensor_ref = (uintptr_t)tensor;
    tensor_dots[k].start_ptr = (uintptr_t)tensor->data.u8;
    const int* inc = CCV_IS_TENSOR_VIEW(tensor) ? ((ccv_nnc_tensor_view_t*)tensor)->inc : tensor->info.dim;
    const size_t inc_size = (ccv_nnc_dimension_count(inc) - inc[0] + tensor->info.dim[0]) * CCV_GET_DATA_TYPE_SIZE(tensor->type);
    tensor_dots[k].end_ptr = tensor_dots[k].start_ptr + inc_size - 1;
    ++k;
   }
  }
 }
 tensor_count = k;

 _ccv_nnc_tensor_dot_sort_by_ptr(tensor_dots, tensor_count, 0);
 int index = 0, zone = 0;
 uintptr_t tensor_ref = tensor_count > 0 ? tensor_dots[0].tensor_ref : 0;
 uintptr_t end_ptr = tensor_count > 0 ? tensor_dots[0].end_ptr : 0;


 for (i = 0; i < tensor_count; i++)
 {
  if (tensor_dots[i].tensor_ref != tensor_ref)
  {
   tensor_ref = tensor_dots[i].tensor_ref;
   ++index;
  }
  if (tensor_dots[i].start_ptr > end_ptr)
  {
   end_ptr = ccv_max(end_ptr, tensor_dots[i].end_ptr);
   ++zone;
  }
  tensor_dots[i].index = index;
  tensor_dots[i].zone = zone;
 }



 const int index_count = index + 1;
 const int zone_count = zone + 1;
 int* remap = (int*)ccmalloc(sizeof(int) * (tensor_count + index_count + zone_count));
 int* rename_index = remap + tensor_count;
 int* rename_zone = rename_index + index_count;
 for (i = 0; i < tensor_count; i++)
  remap[tensor_dots[i].name] = i;
 for (i = 0; i < index_count; i++)
  rename_index[i] = -1;
 for (i = 0; i < zone_count; i++)
  rename_zone[i] = -1;
 index = 0;
 zone = 0;
 for (i = 0; i < tensor_count; i++)
 {
  ccv_nnc_tensor_dot_t* tensor_dot = tensor_dots + remap[i];
  if (rename_index[tensor_dot->index] == -1)
   rename_index[tensor_dot->index] = index++;
  if (rename_zone[tensor_dot->zone] == -1)
   rename_zone[tensor_dot->zone] = zone++;
 }
 ccv_nnc_tensor_dot_recovery_t recovery = {
  .dots = tensor_dots,
  .remap = remap,
  .rename_index = rename_index,
  .rename_zone = rename_zone,
 };
 return recovery;
}
