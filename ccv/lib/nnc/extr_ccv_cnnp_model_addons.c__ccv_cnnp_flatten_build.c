
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_6__ {int* dim; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_cnnp_model_t ;


 int DIM_ALLOC () ;
 int assert (int) ;
 int ccv_nnc_tensor_count (TYPE_1__ const) ;
 int ccv_nnc_tensor_get_n (TYPE_1__ const) ;
 int ccv_nnc_tensor_symbol_alias_new (int * const,int const,int ,int*,TYPE_1__,int ) ;
 TYPE_1__ ccv_nnc_tensor_symbol_params (int * const,int const) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void _ccv_cnnp_flatten_build(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 assert(input_size == 1);
 assert(output_size == 1);
 const ccv_nnc_tensor_param_t params = ccv_nnc_tensor_symbol_params(graph, inputs[0]);
 ccv_nnc_tensor_param_t output_params = params;
 memset(output_params.dim, 0, sizeof(output_params.dim));
 output_params.dim[0] = ccv_nnc_tensor_get_n(params);
 assert(output_params.dim[0] > 0);
 output_params.dim[1] = ccv_nnc_tensor_count(params) / output_params.dim[0];
 outputs[0] = ccv_nnc_tensor_symbol_alias_new(graph, inputs[0], DIM_ALLOC(), output_params.dim, output_params, 0);
}
