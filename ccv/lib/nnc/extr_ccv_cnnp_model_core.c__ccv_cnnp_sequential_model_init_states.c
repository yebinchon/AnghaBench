
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_cnnp_state_initializer_f ;
struct TYPE_2__ {int sequence_size; int * sequence; } ;
typedef TYPE_1__ ccv_cnnp_sequential_model_t ;
typedef int ccv_cnnp_model_t ;


 int ccv_cnnp_model_init_states (int ,int * const,int const,void* const) ;

__attribute__((used)) static void _ccv_cnnp_sequential_model_init_states(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_cnnp_state_initializer_f initializer, void* const context)
{
 ccv_cnnp_sequential_model_t* const self = (ccv_cnnp_sequential_model_t*)super;
 int i;
 for (i = 0; i < self->sequence_size; i++)
  ccv_cnnp_model_init_states(self->sequence[i], graph, initializer, context);
}
