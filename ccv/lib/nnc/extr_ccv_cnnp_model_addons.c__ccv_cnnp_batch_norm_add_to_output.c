
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_nnc_tensor_symbol_t ;
typedef int ccv_cnnp_model_t ;
struct TYPE_3__ {TYPE_2__* retainables; } ;
typedef TYPE_1__ ccv_cnnp_model_batch_norm_t ;
typedef int (* ccv_cnnp_add_to_array_f ) (void* const,int const) ;
struct TYPE_4__ {int rnum; } ;


 scalar_t__ ccv_array_get (TYPE_2__*,int) ;

__attribute__((used)) static void _ccv_cnnp_batch_norm_add_to_output(ccv_cnnp_model_t* const super, const ccv_cnnp_add_to_array_f add_to_array, void* const outputs)
{
 ccv_cnnp_model_batch_norm_t* const self = (ccv_cnnp_model_batch_norm_t*)super;
 int i;
 if (self->retainables)
  for (i = 0; i < self->retainables->rnum; i++)
  {
   const ccv_nnc_tensor_symbol_t symbol = *(ccv_nnc_tensor_symbol_t*)ccv_array_get(self->retainables, i);
   add_to_array(outputs, symbol);
  }
}
