
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_cnnp_state_initializer_f ;
typedef int ccv_cnnp_model_t ;
struct TYPE_6__ {int input_size; TYPE_2__* inputs; int * input_symbols; } ;
typedef TYPE_3__ ccv_cnnp_model_cmd_exec_t ;
struct TYPE_4__ {int context; int (* init ) (int ,int const,void* const,int ) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ init_state; } ;


 scalar_t__ CCV_CNNP_INIT_SHARED_TENSOR ;
 scalar_t__ CCV_CNNP_INIT_SHARED_TENSOR_AS_TRAINABLE ;
 int stub1 (int ,int const,void* const,int ) ;

__attribute__((used)) static void _ccv_cnnp_cmd_exec_init_states(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_cnnp_state_initializer_f initializer, void* const context)
{
 ccv_cnnp_model_cmd_exec_t* const self = (ccv_cnnp_model_cmd_exec_t*)super;
 int i;
 for (i = 0; i < self->input_size; i++)
  if (self->inputs[i].type == CCV_CNNP_INIT_SHARED_TENSOR || self->inputs[i].type == CCV_CNNP_INIT_SHARED_TENSOR_AS_TRAINABLE)
   self->inputs[i].init_state.init(self->input_symbols[i], initializer, context, self->inputs[i].init_state.context);
}
