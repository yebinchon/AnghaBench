
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_cnnp_state_initializer_f ;
struct TYPE_6__ {TYPE_1__* isa; } ;
typedef TYPE_2__ ccv_cnnp_model_t ;
struct TYPE_5__ {int (* init_states ) (TYPE_2__* const,int * const,int const,void* const) ;} ;


 int stub1 (TYPE_2__* const,int * const,int const,void* const) ;

__attribute__((used)) static inline void ccv_cnnp_model_init_states(ccv_cnnp_model_t* const self, ccv_nnc_symbolic_graph_t* const graph, const ccv_cnnp_state_initializer_f initializer, void* const context)
{
 if (self->isa->init_states)
  self->isa->init_states(self, graph, initializer, context);
}
