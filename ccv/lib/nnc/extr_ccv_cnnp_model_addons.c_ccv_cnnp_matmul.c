
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; int output_size; int * outputs; int * isa; } ;
struct TYPE_3__ {int* transpose_a; int* transpose_b; TYPE_2__ super; int output; } ;
typedef TYPE_1__ ccv_cnnp_model_matmul_t ;


 scalar_t__ cccalloc (int,int) ;
 int ccv_cnnp_matmul_isa ;
 int ccv_cnnp_model_copy_name (TYPE_2__*,char const* const) ;

ccv_cnnp_model_t* ccv_cnnp_matmul(const int transpose_a[2], const int transpose_b[2], const char* const name)
{
 ccv_cnnp_model_matmul_t* const model_matmul = (ccv_cnnp_model_matmul_t*)cccalloc(1, sizeof(ccv_cnnp_model_matmul_t));
 model_matmul->super.isa = &ccv_cnnp_matmul_isa;
 model_matmul->super.input_size = 2;
 model_matmul->super.outputs = &model_matmul->output;
 model_matmul->super.output_size = 1;
 model_matmul->transpose_a[0] = transpose_a[0];
 model_matmul->transpose_a[1] = transpose_a[1];
 model_matmul->transpose_b[0] = transpose_b[0];
 model_matmul->transpose_b[1] = transpose_b[1];
 ccv_cnnp_model_copy_name(&model_matmul->super, name);
 return (ccv_cnnp_model_t*)model_matmul;
}
