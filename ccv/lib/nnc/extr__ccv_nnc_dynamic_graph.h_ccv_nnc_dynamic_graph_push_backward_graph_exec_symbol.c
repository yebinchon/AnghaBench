
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_5__ {int type; int d; } ;
typedef TYPE_1__ ccv_nnc_tape_symbol_t ;
struct TYPE_6__ {int d; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
typedef int ccv_nnc_cmd_t ;
typedef int ccv_array_t ;


 int CCV_NNC_SYMBOL_GRAPH_EXEC ;
 int ccv_array_push (int * const,TYPE_1__*) ;

__attribute__((used)) static inline void ccv_nnc_dynamic_graph_push_backward_graph_exec_symbol(void* context, const ccv_nnc_graph_exec_symbol_t symbol, const ccv_nnc_cmd_t cmd, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, const ccv_nnc_tensor_symbol_t* const outputs, const int output_size, const char* const name)
{
 ccv_array_t* const stack = (ccv_array_t*)context;
 ccv_nnc_tape_symbol_t tape_symbol = {
  .d = symbol.d,
  .type = CCV_NNC_SYMBOL_GRAPH_EXEC,
 };
 ccv_array_push(stack, &tape_symbol);
}
