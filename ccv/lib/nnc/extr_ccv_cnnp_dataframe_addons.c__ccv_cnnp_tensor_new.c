
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_stream_context_t ;


 void* ccv_nnc_tensor_new (int ,int ,int ) ;

__attribute__((used)) static void _ccv_cnnp_tensor_new(const int column_idx, const int* const row_idxs, const int row_size, void** const data, void* const context, ccv_nnc_stream_context_t* const stream_context)
{
 ccv_nnc_tensor_param_t params = *(ccv_nnc_tensor_param_t*)context;
 int i;
 for (i = 0; i < row_size; i++)
  if (!data[i])
   data[i] = ccv_nnc_tensor_new(0, params, 0);
}
