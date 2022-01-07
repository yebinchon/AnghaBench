
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_10__ {scalar_t__* dim; } ;
typedef TYPE_2__ ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_graph_exec_symbol_t ;
typedef int ccv_nnc_cmd_t ;
typedef int ccv_cnnp_model_t ;
struct TYPE_9__ {int hint; } ;
struct TYPE_11__ {scalar_t__* kdim; TYPE_1__ params; } ;
typedef TYPE_3__ ccv_cnnp_model_pool_t ;


 int CMD_MAX_POOL_FORWARD (scalar_t__,scalar_t__) ;
 int TENSOR_SYMBOL_LIST (int const) ;
 int assert (int) ;
 int ccv_nnc_graph_exec_symbol_new (int * const,int ,int ,int ,int ) ;
 int ccv_nnc_graph_exec_symbol_set_hint (int * const,int const,int ) ;
 int ccv_nnc_hint_tensor_auto (int ,TYPE_2__ const*,int,int ,TYPE_2__*,int) ;
 int ccv_nnc_tensor_hw (TYPE_2__ const,int ) ;
 int ccv_nnc_tensor_nd (scalar_t__*) ;
 int ccv_nnc_tensor_symbol_new (int * const,TYPE_2__,int ) ;
 TYPE_2__ ccv_nnc_tensor_symbol_params (int * const,int const) ;

__attribute__((used)) static void _ccv_cnnp_max_pool_build(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 assert(input_size == 1);
 assert(output_size == 1);
 ccv_cnnp_model_pool_t* const self = (ccv_cnnp_model_pool_t*)super;
 const ccv_nnc_tensor_param_t params = ccv_nnc_tensor_symbol_params(graph, inputs[0]);
 const int hw = ccv_nnc_tensor_hw(params, ccv_nnc_tensor_nd(params.dim));
 ccv_nnc_cmd_t cmd;
 if (hw >= 0 && self->kdim[0] == 0 && self->kdim[1] == 0)
  cmd = CMD_MAX_POOL_FORWARD(params.dim[hw], params.dim[hw + 1]);
 else
  cmd = CMD_MAX_POOL_FORWARD(self->kdim[0], self->kdim[1]);
 ccv_nnc_tensor_param_t output_params;
 ccv_nnc_hint_tensor_auto(cmd, &params, 1, self->params.hint, &output_params, 1);
 const ccv_nnc_tensor_symbol_t pool_output = ccv_nnc_tensor_symbol_new(graph, output_params, 0);
 const ccv_nnc_graph_exec_symbol_t exec = ccv_nnc_graph_exec_symbol_new(graph, cmd, TENSOR_SYMBOL_LIST(inputs[0]), TENSOR_SYMBOL_LIST(pool_output), 0);
 ccv_nnc_graph_exec_symbol_set_hint(graph, exec, self->params.hint);
 outputs[0] = pool_output;
}
