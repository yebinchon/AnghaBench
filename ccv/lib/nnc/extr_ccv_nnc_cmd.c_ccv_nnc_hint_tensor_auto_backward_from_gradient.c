
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_cmd_param_t ;



void ccv_nnc_hint_tensor_auto_backward_from_gradient(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
 int i;
 for (i = 0; i < output_size; i++)
  outputs[i] = inputs[0];
}
