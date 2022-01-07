
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_view_t ;


 int ccfree (int * const) ;

void ccv_nnc_tensor_view_free(ccv_nnc_tensor_view_t* const tensor_view)
{
 ccfree(tensor_view);
}
