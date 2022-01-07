
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; } ;
struct TYPE_6__ {int sequence_size; TYPE_2__** sequence; TYPE_1__ super; } ;
typedef TYPE_3__ ccv_cnnp_functional_model_t ;
typedef int ccv_cnnp_add_to_array_f ;
struct TYPE_5__ {int model; } ;


 int ccv_cnnp_model_add_to_output (int ,int const,void* const) ;

__attribute__((used)) static void _ccv_cnnp_functional_model_add_to_output(ccv_cnnp_model_t* const super, const ccv_cnnp_add_to_array_f add_to_array, void* const outputs)
{
 ccv_cnnp_functional_model_t* const self = (ccv_cnnp_functional_model_t*)super;
 int i;
 for (i = self->super.input_size; i < self->sequence_size; i++)
  ccv_cnnp_model_add_to_output(self->sequence[i]->model, add_to_array, outputs);
}
