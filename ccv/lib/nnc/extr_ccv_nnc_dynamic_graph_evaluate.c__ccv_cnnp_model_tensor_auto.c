
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_tensor_param_t ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ ccv_nnc_stateful_exec_t ;
typedef int ccv_nnc_hint_t ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ ccv_nnc_cmd_t ;
typedef int ccv_cnnp_model_t ;


 int ccv_cnnp_model_tensor_auto (int * const,int * const,int const) ;

__attribute__((used)) static void _ccv_cnnp_model_tensor_auto(const ccv_nnc_cmd_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
 ccv_nnc_stateful_exec_t* const stateful_exec = (ccv_nnc_stateful_exec_t*)cmd.data;
 ccv_cnnp_model_t* const model = (ccv_cnnp_model_t*)stateful_exec->data;
 ccv_cnnp_model_tensor_auto(model, outputs, output_size);
}
