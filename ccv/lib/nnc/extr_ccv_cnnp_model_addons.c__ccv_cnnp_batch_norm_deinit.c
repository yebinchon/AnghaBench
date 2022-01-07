
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_2__ {scalar_t__ retainables; scalar_t__ zero_inits; } ;
typedef TYPE_1__ ccv_cnnp_model_batch_norm_t ;


 int ccv_array_free (scalar_t__) ;

__attribute__((used)) static void _ccv_cnnp_batch_norm_deinit(ccv_cnnp_model_t* const super)
{
 ccv_cnnp_model_batch_norm_t* const self = (ccv_cnnp_model_batch_norm_t*)super;
 if (self->zero_inits)
  ccv_array_free(self->zero_inits);
 if (self->retainables)
  ccv_array_free(self->retainables);
}
