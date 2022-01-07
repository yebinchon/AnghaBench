
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dim; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_cmd_param_t ;


 int assert (int) ;
 int ccv_nnc_tensor_get_c (TYPE_1__) ;
 int ccv_nnc_tensor_nd (int ) ;
 int ccv_nnc_tensor_set_c (TYPE_1__*,int const,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void _ccv_nnc_softmax_crossentropy_tensor_auto_forw(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
 assert(input_size == 2);
 assert(output_size >= 1);
 outputs[0] = inputs[0];

 memcpy(outputs[0].dim, inputs[1].dim, sizeof(outputs[0].dim));
 const int nd = ccv_nnc_tensor_nd(outputs[0].dim);

 if (nd > 1 && ccv_nnc_tensor_get_c(outputs[0]) > 1)
  ccv_nnc_tensor_set_c(&outputs[0], nd, 1);
 if (output_size > 1)
  outputs[1] = inputs[0];
}
