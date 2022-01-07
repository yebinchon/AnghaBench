
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* dim; int datatype; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_cmd_param_t ;


 scalar_t__ CCV_GET_DATA_TYPE_SIZE (int ) ;
 int CCV_NNC_MAX_DIM_ALLOC ;
 int assert (int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void _ccv_nnc_dropout_tensor_auto_forw(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
 assert(input_size == 1);
 assert(output_size <= 2);
 outputs[0] = inputs[0];
 if (output_size == 1)
  return;
 outputs[1] = inputs[0];
 int i;

 memset(outputs[1].dim, 0, sizeof(outputs[1].dim));
 const int inc = (int)CCV_GET_DATA_TYPE_SIZE(inputs[0].datatype);

 int line = ((inputs[0].dim[0] + 127) >> 7);
 for (i = 1; i < CCV_NNC_MAX_DIM_ALLOC && inputs[0].dim[i] > 0; i++)
  line *= inputs[0].dim[i];
 assert((128 % inc) == 0);
 outputs[1].dim[0] = 128 / inc;
 outputs[1].dim[1] = line;
}
