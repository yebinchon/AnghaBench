
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sequence_size; int * sequence; } ;
typedef TYPE_1__ ccv_cnnp_sequential_model_t ;
typedef int ccv_cnnp_model_t ;
typedef int ccv_cnnp_cmd_updater_f ;


 int ccv_cnnp_model_set_is_test (int ,int const,int const,void* const) ;

__attribute__((used)) static void _ccv_cnnp_sequential_model_set_is_test(ccv_cnnp_model_t* const super, const int is_test, const ccv_cnnp_cmd_updater_f updater, void* const context)
{
 ccv_cnnp_sequential_model_t* const self = (ccv_cnnp_sequential_model_t*)super;
 int i;
 for (i = 0; i < self->sequence_size; i++)
  ccv_cnnp_model_set_is_test(self->sequence[i], is_test, updater, context);
}
