
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_5__ {int dim; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_cnnp_model_t ;
struct TYPE_6__ {int inc; int ofs; int dim; } ;
typedef TYPE_2__ ccv_cnnp_model_reshape_t ;


 int assert (int) ;
 int ccv_nnc_tensor_symbol_alias_new (int * const,int const,int ,int ,TYPE_1__,int ) ;
 TYPE_1__ ccv_nnc_tensor_symbol_params (int * const,int const) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void _ccv_cnnp_reshape_build(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 assert(input_size == 1);
 assert(output_size == 1);
 ccv_cnnp_model_reshape_t* const self = (ccv_cnnp_model_reshape_t*)super;
 ccv_nnc_tensor_param_t params = ccv_nnc_tensor_symbol_params(graph, inputs[0]);
 memcpy(params.dim, self->dim, sizeof(params.dim));
 outputs[0] = ccv_nnc_tensor_symbol_alias_new(graph, inputs[0], self->ofs, self->inc, params, 0);
}
