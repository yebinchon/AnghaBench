
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
typedef int ccv_nnc_tensor_param_t ;
struct TYPE_3__ {int const tensor; int type; } ;
typedef TYPE_1__ ccv_cnnp_rewind_symbol_t ;
typedef int ccv_array_t ;


 int CCV_CNNP_REWIND_TENSOR ;
 int ccv_array_push (int * const,TYPE_1__ const*) ;

__attribute__((used)) static void _ccv_cnnp_model_tensor_symbol_new_hook(void* context, const ccv_nnc_tensor_symbol_t symbol, const ccv_nnc_tensor_param_t info, const char* const name)
{
 const ccv_cnnp_rewind_symbol_t rewind_symbol = {
  .type = CCV_CNNP_REWIND_TENSOR,
  .tensor = symbol
 };
 ccv_array_t* const rewind_symbols = (ccv_array_t*)context;
 ccv_array_push(rewind_symbols, &rewind_symbol);
}
