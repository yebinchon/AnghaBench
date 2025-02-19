
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_6__ {int is_test; } ;
struct TYPE_9__ {TYPE_1__ bnorm; } ;
struct TYPE_8__ {scalar_t__ graph; } ;
struct TYPE_7__ {TYPE_4__ params; TYPE_3__ batch_norm; } ;
typedef TYPE_2__ ccv_cnnp_model_batch_norm_t ;
typedef int (* ccv_cnnp_cmd_updater_f ) (void* const,TYPE_3__,int ,int ) ;


 int CCV_NNC_BATCH_NORM_FORWARD ;
 int ccv_nnc_cmd (int ,int ,TYPE_4__,int ) ;
 int ccv_nnc_no_hint ;

__attribute__((used)) static void _ccv_cnnp_batch_norm_set_is_test(ccv_cnnp_model_t* const super, const int is_test, const ccv_cnnp_cmd_updater_f updater, void* const context)
{
 ccv_cnnp_model_batch_norm_t* const self = (ccv_cnnp_model_batch_norm_t*)super;
 if (self->batch_norm.graph)
 {
  self->params.bnorm.is_test = is_test;
  updater(context, self->batch_norm, ccv_nnc_cmd(CCV_NNC_BATCH_NORM_FORWARD, 0, self->params, 0), ccv_nnc_no_hint);
 }
}
