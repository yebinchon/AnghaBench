
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_11__ {int graph; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_t ;
struct TYPE_12__ {int type; } ;
typedef TYPE_3__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_10__ {int ** accum_gradients; int ** gradients; } ;
struct TYPE_13__ {TYPE_1__ tensors; TYPE_8__* trainables; int parallel_count; } ;
typedef TYPE_4__ ccv_cnnp_compiled_data_t ;
struct TYPE_14__ {int rnum; } ;


 int CCV_TENSOR_SET_DEVICE_ID (int ,int) ;
 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccv_array_get (TYPE_8__*,int) ;
 int ccv_max (int ,int) ;
 void* ccv_nnc_tensor_new (int ,TYPE_3__,int ) ;
 TYPE_3__ ccv_nnc_tensor_symbol_params (int ,TYPE_2__ const) ;

__attribute__((used)) static void _ccv_cnnp_model_gradient_tensors_init(const ccv_nnc_symbolic_graph_t* const graph, ccv_cnnp_compiled_data_t* const compiled_data)
{
 assert(!compiled_data->tensors.gradients);
 const int trainable_size = compiled_data->trainables->rnum;
 const int parallel_count = ccv_max(compiled_data->parallel_count, 1);
 compiled_data->tensors.gradients = (ccv_nnc_tensor_t**)ccmalloc(sizeof(ccv_nnc_tensor_t*) * trainable_size * 2 * parallel_count);
 compiled_data->tensors.accum_gradients = compiled_data->tensors.gradients + trainable_size * parallel_count;
 int i, j;
 for (i = 0; i < trainable_size; i++)
 {
  const ccv_nnc_tensor_symbol_t trainable = *(ccv_nnc_tensor_symbol_t*)ccv_array_get(compiled_data->trainables, i);
  ccv_nnc_tensor_param_t info = ccv_nnc_tensor_symbol_params(trainable.graph, trainable);
  CCV_TENSOR_SET_DEVICE_ID(info.type, 0);
  compiled_data->tensors.gradients[i] = ccv_nnc_tensor_new(0, info, 0);
  compiled_data->tensors.accum_gradients[i] = 0;
  for (j = 1; j < parallel_count; j++)
  {
   CCV_TENSOR_SET_DEVICE_ID(info.type, j);
   compiled_data->tensors.gradients[i + j * trainable_size] = ccv_nnc_tensor_new(0, info, 0);
   compiled_data->tensors.accum_gradients[i + j * trainable_size] = 0;
  }
 }
}
