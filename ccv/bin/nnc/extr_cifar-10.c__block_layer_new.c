
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_cnnp_model_t ;
typedef int ccv_cnnp_model_io_t ;


 int MODEL_IO_LIST (int ) ;
 int * _building_block_new (int const,int const,int const,int) ;
 int ccv_cnnp_input () ;
 int ccv_cnnp_model_apply (int *,int ) ;
 int * ccv_cnnp_model_new (int ,int ,int ) ;

__attribute__((used)) static ccv_cnnp_model_t* _block_layer_new(const int filters, const int strides, const int border, const int blocks)
{
 ccv_cnnp_model_io_t input = ccv_cnnp_input();
 ccv_cnnp_model_t* first_block = _building_block_new(filters, strides, border, 1);
 ccv_cnnp_model_io_t output = ccv_cnnp_model_apply(first_block, MODEL_IO_LIST(input));
 int i;
 for (i = 1; i < blocks; i++)
 {
  ccv_cnnp_model_t* block = _building_block_new(filters, 1, 1, 0);
  output = ccv_cnnp_model_apply(block, MODEL_IO_LIST(output));
 }
 return ccv_cnnp_model_new(MODEL_IO_LIST(input), MODEL_IO_LIST(output), 0);
}
