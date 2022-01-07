
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int input_size; int output_size; int * outputs; int * isa; } ;
struct TYPE_3__ {int* transpose; TYPE_2__ super; int output; } ;
typedef TYPE_1__ ccv_cnnp_model_transpose_t ;
typedef int ccv_cnnp_model_t ;


 scalar_t__ cccalloc (int,int) ;
 int ccv_cnnp_model_copy_name (TYPE_2__*,char const* const) ;
 int ccv_cnnp_transpose_isa ;

ccv_cnnp_model_t* ccv_cnnp_transpose(const int axis_a, const int axis_b, const char* const name)
{
 ccv_cnnp_model_transpose_t* const model_transpose = (ccv_cnnp_model_transpose_t*)cccalloc(1, sizeof(ccv_cnnp_model_transpose_t));
 model_transpose->super.isa = &ccv_cnnp_transpose_isa;
 model_transpose->super.input_size = 1;
 model_transpose->super.outputs = &model_transpose->output;
 model_transpose->super.output_size = 1;
 model_transpose->transpose[0] = axis_a;
 model_transpose->transpose[1] = axis_b;
 ccv_cnnp_model_copy_name(&model_transpose->super, name);
 return (ccv_cnnp_model_t*)model_transpose;
}
