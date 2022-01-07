
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_variable_t ;
typedef int ccv_nnc_stream_context_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_dynamic_graph_t ;
typedef int ccv_nnc_cmd_t ;


 int CCV_NNC_EXEC_SUCCESS ;
 int ccv_nnc_dynamic_graph_exec_ret (int * const,int const,int const,int const,int const* const,int const,int * const,int const,int const,int * const) ;

int ccv_nnc_dynamic_graph_exec(ccv_nnc_dynamic_graph_t* const graph, const ccv_nnc_cmd_t cmd, const ccv_nnc_hint_t hint, const int flags, const ccv_nnc_tensor_variable_t* const inputs, const int input_size, ccv_nnc_tensor_variable_t* const outputs, const int output_size, const int parallel, ccv_nnc_stream_context_t* const stream_context)
{
 ccv_nnc_dynamic_graph_exec_ret(graph, cmd, hint, flags, inputs, input_size, outputs, output_size, parallel, stream_context);
 return CCV_NNC_EXEC_SUCCESS;
}
