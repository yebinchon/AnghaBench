
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; int output_size; int * outputs; int * isa; } ;
struct TYPE_3__ {int inc; int ofs; int dim; TYPE_2__ super; int output; } ;
typedef TYPE_1__ ccv_cnnp_model_reshape_t ;


 int CCV_NNC_MAX_DIM_ALLOC ;
 scalar_t__ cccalloc (int,int) ;
 int ccv_cnnp_model_copy_name (TYPE_2__*,char const* const) ;
 int ccv_cnnp_reshape_isa ;
 int memcpy (int ,int const*,int) ;

ccv_cnnp_model_t* ccv_cnnp_reshape(const int dim[CCV_NNC_MAX_DIM_ALLOC], const int ofs[CCV_NNC_MAX_DIM_ALLOC], const int inc[CCV_NNC_MAX_DIM_ALLOC], const char* const name)
{
 ccv_cnnp_model_reshape_t* const model_reshape = (ccv_cnnp_model_reshape_t*)cccalloc(1, sizeof(ccv_cnnp_model_reshape_t));
 model_reshape->super.isa = &ccv_cnnp_reshape_isa;
 model_reshape->super.input_size = 1;
 model_reshape->super.outputs = &model_reshape->output;
 model_reshape->super.output_size = 1;
 ccv_cnnp_model_copy_name(&model_reshape->super, name);
 memcpy(model_reshape->dim, dim, sizeof(model_reshape->dim));
 memcpy(model_reshape->ofs, ofs, sizeof(model_reshape->ofs));
 int i, flag = 0;
 for (i = 0; !flag && i < CCV_NNC_MAX_DIM_ALLOC; i++)
  flag = (inc[i] != 0);
 memcpy(model_reshape->inc, flag ? inc : dim, sizeof(model_reshape->inc));
 return (ccv_cnnp_model_t*)model_reshape;
}
