
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; int output_size; int * outputs; int * isa; } ;
struct TYPE_3__ {TYPE_2__ super; int output; } ;
typedef TYPE_1__ ccv_cnnp_model_relu_t ;


 scalar_t__ cccalloc (int,int) ;
 int ccv_cnnp_model_copy_name (TYPE_2__*,char const* const) ;
 int ccv_cnnp_relu_isa ;

ccv_cnnp_model_t* ccv_cnnp_relu(const char* const name)
{
 ccv_cnnp_model_relu_t* const model_relu = (ccv_cnnp_model_relu_t*)cccalloc(1, sizeof(ccv_cnnp_model_relu_t));
 model_relu->super.isa = &ccv_cnnp_relu_isa;
 model_relu->super.input_size = 1;
 model_relu->super.outputs = &model_relu->output;
 model_relu->super.output_size = 1;
 ccv_cnnp_model_copy_name(&model_relu->super, name);
 return (ccv_cnnp_model_t*)model_relu;
}
