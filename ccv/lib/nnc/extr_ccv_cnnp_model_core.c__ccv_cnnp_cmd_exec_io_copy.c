
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_t ;
typedef int ccv_nnc_tensor_symbol_t ;
typedef int (* ccv_cnnp_state_initializer_f ) (void* const,int ,int ,int ,int *,int const) ;


 int CMD_DATA_TRANSFER_FORWARD () ;
 int ccv_nnc_no_hint ;

__attribute__((used)) static void _ccv_cnnp_cmd_exec_io_copy(const ccv_nnc_tensor_symbol_t tensor_symbol, const ccv_cnnp_state_initializer_f initializer, void* const initializer_context, void* const context)
{
 initializer(initializer_context, CMD_DATA_TRANSFER_FORWARD(), ccv_nnc_no_hint, 0, (ccv_nnc_tensor_t*)context, tensor_symbol);
}
