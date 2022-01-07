
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_symbol_t ;
typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_cnnp_model_t ;


 int CMD_EWSUM_FORWARD () ;
 int assert (int) ;
 int ccv_nnc_graph_exec_symbol_new (int * const,int ,int const* const,int const,int * const,int const,int ) ;
 int ccv_nnc_tensor_symbol_new (int * const,int ,int ) ;
 int ccv_nnc_tensor_symbol_params (int * const,int const) ;

__attribute__((used)) static void _ccv_cnnp_add_build(ccv_cnnp_model_t* const self, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 assert(output_size == 1);
 outputs[0] = ccv_nnc_tensor_symbol_new(graph, ccv_nnc_tensor_symbol_params(graph, inputs[0]), 0);
 ccv_nnc_graph_exec_symbol_new(graph, CMD_EWSUM_FORWARD(), inputs, input_size, outputs, output_size, 0);
}
