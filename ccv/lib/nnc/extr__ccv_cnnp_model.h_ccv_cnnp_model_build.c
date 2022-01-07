
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_7__ {int const output_size; int * const outputs; TYPE_1__* isa; } ;
typedef TYPE_2__ ccv_cnnp_model_t ;
struct TYPE_6__ {int (* build ) (TYPE_2__* const,int * const,int const* const,int const,int * const,int const) ;} ;


 int assert (int) ;
 int memcpy (int * const,int * const,int) ;
 int stub1 (TYPE_2__* const,int * const,int const* const,int const,int * const,int const) ;
 int stub2 (TYPE_2__* const,int * const,int const* const,int const,int * const,int const) ;

__attribute__((used)) static inline void ccv_cnnp_model_build(ccv_cnnp_model_t* const self, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
 if (outputs && output_size)
 {
  assert(output_size == self->output_size);
  self->isa->build(self, graph, inputs, input_size, outputs, output_size);
  memcpy(self->outputs, outputs, sizeof(ccv_nnc_tensor_symbol_t) * output_size);
 } else
  self->isa->build(self, graph, inputs, input_size, self->outputs, self->output_size);
}
