
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; int output_size; int * outputs; int * isa; } ;
struct TYPE_3__ {float p; TYPE_2__ super; int output; } ;
typedef TYPE_1__ ccv_cnnp_model_dropout_t ;


 scalar_t__ cccalloc (int,int) ;
 int ccv_cnnp_dropout_isa ;
 int ccv_cnnp_model_copy_name (TYPE_2__*,char const* const) ;

ccv_cnnp_model_t* ccv_cnnp_dropout(const float p, const char* const name)
{
 ccv_cnnp_model_dropout_t* const model_dropout = (ccv_cnnp_model_dropout_t*)cccalloc(1, sizeof(ccv_cnnp_model_dropout_t));
 model_dropout->super.isa = &ccv_cnnp_dropout_isa;
 model_dropout->super.input_size = 1;
 model_dropout->super.outputs = &model_dropout->output;
 model_dropout->super.output_size = 1;
 model_dropout->p = p;
 ccv_cnnp_model_copy_name(&model_dropout->super, name);
 return (ccv_cnnp_model_t*)model_dropout;
}
