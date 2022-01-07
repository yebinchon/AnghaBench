
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; int * input_symbols; TYPE_1__* inputs; } ;
typedef TYPE_2__ ccv_cnnp_model_cmd_exec_t ;
typedef int (* ccv_cnnp_add_to_array_f ) (void* const,int ) ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ CCV_CNNP_INIT_SHARED_TENSOR_AS_TRAINABLE ;

__attribute__((used)) static void _ccv_cnnp_cmd_exec_add_to_trainable(ccv_cnnp_model_t* const super, const ccv_cnnp_add_to_array_f add_to_array, void* const trainables)
{
 ccv_cnnp_model_cmd_exec_t* const self = (ccv_cnnp_model_cmd_exec_t*)super;
 int i;
 for (i = 0; i < self->input_size; i++)
  if (self->inputs[i].type == CCV_CNNP_INIT_SHARED_TENSOR_AS_TRAINABLE)
   add_to_array(trainables, self->input_symbols[i]);
}
