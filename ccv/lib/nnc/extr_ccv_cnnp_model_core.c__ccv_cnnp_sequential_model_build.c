
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_2__ {int sequence_size; int ** sequence; } ;
typedef TYPE_1__ ccv_cnnp_sequential_model_t ;
typedef int ccv_cnnp_model_t ;


 int assert (int) ;
 int ccv_cnnp_model_build (int * const,int * const,int *,int,int *,int) ;

__attribute__((used)) static void _ccv_cnnp_sequential_model_build(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 ccv_cnnp_sequential_model_t* const self = (ccv_cnnp_sequential_model_t*)super;
 int i;
 ccv_nnc_tensor_symbol_t input = inputs[0];
 assert(input_size == 1);
 for (i = 0; i < self->sequence_size; i++)
 {
  ccv_nnc_tensor_symbol_t output;
  ccv_cnnp_model_t* const sub_model = self->sequence[i];

  ccv_cnnp_model_build(sub_model, graph, &input, 1, &output, 1);
  input = output;
 }
 outputs[0] = input;
}
