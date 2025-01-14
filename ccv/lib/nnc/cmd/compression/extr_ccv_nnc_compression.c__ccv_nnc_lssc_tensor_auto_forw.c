
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ datatype; int* dim; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_cmd_param_t ;


 scalar_t__ CCV_16F ;
 int CCV_NNC_MAX_DIM ;
 int assert (int) ;
 int ccv_nnc_tensor_hw (TYPE_1__ const,int const) ;
 int ccv_nnc_tensor_nd (int*) ;

__attribute__((used)) static void _ccv_nnc_lssc_tensor_auto_forw(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* outputs, const int output_size)
{
 int i, j;
 assert(output_size <= input_size);
 for (i = 0; i < output_size; i++)
 {
  assert(inputs[i].datatype == CCV_16F);
  const int nd = ccv_nnc_tensor_nd(inputs[i].dim);
  const int hw = ccv_nnc_tensor_hw(inputs[i], nd);
  outputs[i] = inputs[i];
  for (j = 0; j < CCV_NNC_MAX_DIM - 1; j++)
   outputs[i].dim[j + hw] = (inputs[i].dim[j + hw] + 3) / 4;
  outputs[i].dim[CCV_NNC_MAX_DIM - 1 + hw] = (inputs[i].dim[CCV_NNC_MAX_DIM - 1 + hw] + 3) / 4 * 4;
 }
}
