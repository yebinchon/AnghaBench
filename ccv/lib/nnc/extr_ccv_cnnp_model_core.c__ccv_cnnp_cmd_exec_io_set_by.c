
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
typedef int (* ccv_cnnp_state_initializer_f ) (void* const,int ,int ,int ,int ,int const) ;
struct TYPE_2__ {int flags; int hint; int cmd; } ;
typedef TYPE_1__ ccv_cnnp_cmd_exec_io_set_by_t ;



__attribute__((used)) static void _ccv_cnnp_cmd_exec_io_set_by(const ccv_nnc_tensor_symbol_t tensor_symbol, const ccv_cnnp_state_initializer_f initializer, void* const initializer_context, void* const context)
{
 const ccv_cnnp_cmd_exec_io_set_by_t* const set_by = (ccv_cnnp_cmd_exec_io_set_by_t*)context;
 initializer(initializer_context, set_by->cmd, set_by->hint, set_by->flags, 0, tensor_symbol);
}
