
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_cnnp_param_t ;
typedef int ccv_cnnp_model_t ;
struct TYPE_6__ {scalar_t__ graph; void* d; } ;
struct TYPE_5__ {scalar_t__ graph; void* d; } ;
struct TYPE_8__ {int input_size; int output_size; int * outputs; int * isa; } ;
struct TYPE_7__ {int count; int params; TYPE_2__ bias; TYPE_1__ weights; TYPE_4__ super; int output; } ;
typedef TYPE_3__ ccv_cnnp_model_dense_t ;


 void* CCV_NNC_NO_TENSOR_SYMBOL ;
 scalar_t__ cccalloc (int,int) ;
 int ccv_cnnp_dense_isa ;
 int ccv_cnnp_model_copy_name (TYPE_4__*,char const* const) ;

ccv_cnnp_model_t* ccv_cnnp_dense(const int count, const ccv_cnnp_param_t params, const char* const name)
{
 ccv_cnnp_model_dense_t* const model_dense = (ccv_cnnp_model_dense_t*)cccalloc(1, sizeof(ccv_cnnp_model_dense_t));
 model_dense->super.isa = &ccv_cnnp_dense_isa;
 model_dense->super.input_size = 1;
 model_dense->super.outputs = &model_dense->output;
 model_dense->super.output_size = 1;
 ccv_cnnp_model_copy_name(&model_dense->super, name);
 model_dense->weights.d = CCV_NNC_NO_TENSOR_SYMBOL;
 model_dense->weights.graph = 0;
 model_dense->bias.d = CCV_NNC_NO_TENSOR_SYMBOL;
 model_dense->bias.graph = 0;
 model_dense->count = count;
 model_dense->params = params;
 return (ccv_cnnp_model_t*)model_dense;
}
